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

subscriber = User.new
subscriber.username = 'subscriber1'
subscriber.email = 'subscriber1@subscriber.com'
subscriber.password = 'password'
subscriber.status = 1
subscriber.admin = false
subscriber.save

