class Contact < ActiveRecord::Base
  belongs_to :device
  has_many :logs
  has_many :messages
end
