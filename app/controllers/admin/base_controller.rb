module Admin
  class BaseController < ApplicationController
    layout "subscriber"
    before_action :authorize
    
    def all_device
      if current_user.admin
        @all_device ||= Device.all
      else
        @all_device ||= current_user.devices
      end
    end
    helper_method :all_device
  end
end
