class App < ActiveRecord::Base
  belongs_to :device
  validates :program, :presence => true, uniqueness: { case_sensitive: false, scope: :package, message: "should exists once per package" }
end
