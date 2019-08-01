# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
urls = ["https://cdn.pixabay.com/photo/2019/07/30/10/18/closeup-4372624_960_720.jpg", "https://cdn.pixabay.com/photo/2019/07/22/15/19/new-zealand-4355349_960_720.jpg", "https://cdn.pixabay.com/photo/2019/07/30/05/25/cat-4371986_960_720.jpg", "https://cdn.pixabay.com/photo/2019/07/26/08/54/girl-4364282_960_720.jpg","https://cdn.pixabay.com/photo/2015/03/18/09/31/prairie-679014_960_720.jpg"]

urls.each do |url|
  notes = Note.create(image_url: url)
end
