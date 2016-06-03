# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Video.delete_all

user = User.new(
  email:                  'adam@email.com',
  password:               '1234',
  password_confirmation:  '1234'
)
user.save

timber = Video.create(
  youtube_id: 'hHUbLv4ThOo',
  title: 'Timber'
)

puts timber.errors.full_messages
