# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Video.delete_all
Tag.delete_all

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

calle_ocho = Video.create(
  youtube_id: 'E2tMV96xULk',
  title: 'Calle Ocho'
)

dale = Tag.create word: '#dale'
kesha = Tag.create word: '#ke$ha'

timber.tags << dale << kesha
calle_ocho.tags << dale

puts timber.tags
puts calle_ocho.tags
puts dale.videos
puts kesha.videos


