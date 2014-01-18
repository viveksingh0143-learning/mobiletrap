class Message < ActiveRecord::Base
  belongs_to :device
  belongs_to :contact
end