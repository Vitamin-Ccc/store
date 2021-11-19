# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Item.destroy_all      added dependent: :destroy to model (store.rb), this line is not needed.
Store.destroy_all

clothing = Store.create(name: "Clothing", description: "Top, Bottom, Dress")
beauty = Store.create(name: "Beauty", description: "Fragrances, Makeup, Skin Care")
shoe = Store.create(name: "Shoes", description: "Boots, Heels, Sneakers")


clothing.items.create(name: "Long Sleeve Sweater Dress", price: "$58.99")
clothing.items.create(name: "Denim Shorts", price: "$32.99")
clothing.items.create(name: "Extra Long Cotton Top", price: "$20.99")

beauty.items.create(name: "CHANEL - BLEU DE CHANEL Eau de Toilette Spray", price: "$120.00")
beauty.items.create(name: "CHANEL - ROUGE COCO Ultra Hydrating Lip Colour", price: "$40.00")
beauty.items.create(name: "Kiehl's Since 1851 - Ultra Facial Cleanser", price: "$22.00")

shoe.items.create(name: "Howler Bootie (Women)", price: "$99.99")
shoe.items.create(name: "Adidas - Swift Run Sneaker (Men)", price: "$90.00")
shoe.items.create(name: "Nike - AirForce 1", price: "$110.00")

