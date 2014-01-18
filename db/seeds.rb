# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new
admin.username = 'admin'
admin.email = 'admin@admin.com'
admin.password = 'password'
admin.status = 1
admin.admin = true
admin.save

subscriber1 = User.find_by_username('subscriber1') || User.new
subscriber1.username = 'subscriber1'
subscriber1.email = 'subscriber1@subscriber.com'
subscriber1.password = 'password'
subscriber1.status = 1
subscriber1.admin = false
subscriber1.save

subscriber2 = User.find_by_username('subscriber2') || User.new
subscriber2.username = 'subscriber2'
subscriber2.email = 'subscriber2@subscriber.com'
subscriber2.password = 'password'
subscriber2.status = 1
subscriber2.admin = false
subscriber2.save


device1 = Device.find_by_imei('1234567890') || Device.new
device1.name = 'Samsung S3'
device1.imei = '1234567890'
device1.serial_number = 'serial1'
device1.devise_type = 'Android'
device1.os = 'Android'
device1.hardware_platform = 'Core INTEL'
device1.total_memory = '2 GB'
device1.total_disk = '120 GB'
device1.free_disk_space = '30 GB'
device1.user = subscriber1
device1.save

device2 = Device.find_by_imei('1234567892') || Device.new
device2.name = 'Samsung S2'
device2.imei = '1234567892'
device2.serial_number = 'serial2'
device2.devise_type = 'Android'
device2.os = 'Android'
device2.hardware_platform = 'Core INTEL'
device2.total_memory = '1 GB'
device2.total_disk = '125 GB'
device2.free_disk_space = '30 GB'
device2.user = subscriber2
device2.save


device3 = Device.find_by_imei('1234567835') || Device.new
device3.name = 'Samsung Grand'
device3.imei = '1234567835'
device3.serial_number = 'serial3'
device3.devise_type = 'Android'
device3.os = 'Android'
device3.hardware_platform = 'Core INTEL'
device3.total_memory = '1 GB'
device3.total_disk = '125 GB'
device3.free_disk_space = '30 GB'
device3.user = subscriber2
device3.save


