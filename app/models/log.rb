class Log < ActiveRecord::Base
  belongs_to :device
  belongs_to :contact
  
  before_save :set_device
  
  def device_imei=(device_imei)
    @device_imei = device_imei
  end

  def device_imei
    @device_imei
  end

  def set_device
    if !device_id.present? && device_imei.present?
      self.device_id = Device.find_by_imei(device_imei).id
    end
  end
end
