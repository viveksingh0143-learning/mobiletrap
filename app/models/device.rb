class Device < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :devise_type, presence: true
  validates :imei, presence: true, uniqueness: { case_sensitive: false }
end
