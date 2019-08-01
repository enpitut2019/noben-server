# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
urls = ["https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwib0KHW4uDjAhUvE6YKHfucBNYQjRx6BAgBEAU&url=https%3A%2F%2Fwww.amazon.co.jp%2F%25E3%2583%2584%25E3%2583%2590%25E3%2583%25A1%25E3%2583%258E%25E3%2583%25BC%25E3%2583%2588-%25E3%2583%258E%25E3%2583%25BC%25E3%2583%2588-8mm%25C3%259728%25E8%25A1%258C-100%25E6%259E%259A-W3011%2Fdp%2FB0013RUVHG&psig=AOvVaw3L3rBWAmAW2ApDNSmLgp_M&ust=1564716981280793", "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwibqYDe4uDjAhWqwosBHX8XD8YQjRx6BAgBEAU&url=%2Furl%3Fsa%3Di%26source%3Dimages%26cd%3D%26ved%3D%26url%3Dhttps%253A%252F%252Fnews.yahoo.co.jp%252Fbyline%252Fmaedatsunehiko%252F20181109-00103465%252F%26psig%3DAOvVaw3L3rBWAmAW2ApDNSmLgp_M%26ust%3D1564716981280793&psig=AOvVaw3L3rBWAmAW2ApDNSmLgp_M&ust=1564716981280793", "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwifqP_m4uDjAhWjwosBHWtTDzIQjRx6BAgBEAU&url=https%3A%2F%2Firoha-shop.jp%2Fitem%2Fgkn&psig=AOvVaw3L3rBWAmAW2ApDNSmLgp_M&ust=1564716981280793", "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwi3oNnu4uDjAhV3xIsBHe2SCSEQjRx6BAgBEAU&url=https%3A%2F%2Fdiamond.jp%2Farticles%2F-%2F157184%3Fpage%3D4&psig=AOvVaw3L3rBWAmAW2ApDNSmLgp_M&ust=1564716981280793"]

urls.each do |url|
  notes = Note.create(image_url: url)
end
