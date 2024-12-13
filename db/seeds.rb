# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create!(name: "Peter", email: "peter@example.com", password: "password", admin: true)
User.create!(name: "Test", email: "test@example.com", password: "password")

Supplier.create!(name: "Amazon", email: "amazon@example.com", phone_number: "32423432")
Supplier.create!(name: "ThinkGeek", email: "thinkgeek@example.com", phone_number: "52423432")

Product.create!(supplier_id: 1, quantity: 100, name: "WNYX Mug", price: 2, description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape")
Product.create!(supplier_id: 1, quantity: 100, name: "Hitchhiker's Guide to the Galaxy", price: 42, description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.")
Product.create!(supplier_id: 2, quantity: 100, name: "Lightsaber", price: 270, description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster")
Product.create!(supplier_id: 1, quantity: 100, name: "Space Cowboy Laser Gun", price: 170, description: "This weapon has no other description than, Shiney!")
Product.create!(supplier_id: 1, quantity: 100, name: "DnD Dice set", price: 57, description: "Take down mighty dragons with this timeless set of 20 sided wonders")
Product.create!(supplier_id: 2, quantity: 100, name: "Sonic Screwdriver", price: 9, description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood")
Product.create!(supplier_id: 1, quantity: 100, name: "Yoda sleeping bag", price: 40, description: "For real")

Category.create!(name: "Weapons")
Category.create!(name: "Star Wars")
Category.create!(name: "Household goods")

CategoryProduct.create!(category_id: 1, product_id: 3)
CategoryProduct.create!(category_id: 1, product_id: 4)
CategoryProduct.create!(category_id: 1, product_id: 6)
CategoryProduct.create!(category_id: 2, product_id: 3)
CategoryProduct.create!(category_id: 2, product_id: 7)
CategoryProduct.create!(category_id: 3, product_id: 1)
CategoryProduct.create!(category_id: 3, product_id: 2)
CategoryProduct.create!(category_id: 3, product_id: 5)
CategoryProduct.create!(category_id: 3, product_id: 7)

Image.create!(product_id: 1, url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg")
Image.create!(product_id: 2, url: "https://prodimage.images-bn.com/pimages/9780307291813_p0_v2_s1200x630.jpg")
Image.create!(product_id: 3, url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif")
Image.create!(product_id: 3, url: "https://cdn.shopify.com/s/files/1/0487/5927/5678/files/green-lightsaber-with-metallic-handle-green-background_480x480.jpg?v=1723819234")
Image.create!(product_id: 3, url: "https://m.media-amazon.com/images/I/51dzIJH5i+L._AC_UF894,1000_QL80_.jpg")
Image.create!(product_id: 3, url: "https://sw6.elbenwald.de/media/34/df/3a/1662244558/E1073203_1.jpg")
Image.create!(product_id: 4, url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776")
Image.create!(product_id: 5, url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg")
Image.create!(product_id: 6, url: "https://sketchfab.com/blogs/community/wp-content/uploads/2020/04/image2-2.jpg")
Image.create!(product_id: 7, url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png")
