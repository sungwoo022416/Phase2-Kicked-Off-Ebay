# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = [{
  name: "book"
},
{
  name: "game",
},
{
  name: "figure"
},
{
  name: "movie"
},
{
  name: "coffee"
},
{
  name: "electronic"
}
]

categories.each do |c|
  Category.create!(c)
end

4.times do 
    User.create({
      name: "#{Faker::Name.initials(number: 2)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    })
end

i = 0

5.times do 

    Product.create({
      name: Faker::Book.title,
      category: "book",
      price: "#{rand(1..1000)}",
      user_id: rand(1..4)
    })

    i += 1
    ProductCategory.create({
        product_id: i,
        category_id: 1
    })

    Product.create({
      name: Faker::Game.title,
      category: "game",
      price: "#{rand(1..100)}",
      user_id: rand(1..4)
    })

    i += 1
    ProductCategory.create({
        product_id: i,
        category_id: 2
    })

    Product.create({
        name: Faker::JapaneseMedia::OnePiece.character,
        category: 'figure',
        price: "#{rand(1..1000000)}",
        user_id: rand(1..4)
    })

    i += 1
    ProductCategory.create({
        product_id: i,
        category_id: 3
    })

    Product.create({
        name: Faker::Movie.title,
        category: 'movie',
        price: "#{rand(1..50)}",
        user_id: rand(1..4)
    })

    i += 1
    ProductCategory.create({
        product_id: i,
        category_id: 4
    })
    
    Product.create({
        name: Faker::Coffee.blend_name,
        category: 'coffee',
        price: "#{rand(1..1000)}",
        user_id: rand(1..4)
    })

    i += 1
    ProductCategory.create({
        product_id: i,
        category_id: 5
    })

    Product.create({
        name: Faker::Drone.name,
        category: 'electronic',
        price: "#{rand(300..10000000000000)}",
        user_id: rand(1..4)
    })

    i += 1
    ProductCategory.create({
        product_id: i,
        category_id: 6
    })
    
    Product.create({
        name: Faker::Camera.brand_with_model,
        category: 'electronic',
        price: "#{rand(1..100000)}",
        user_id: rand(1..4)
    })
    
    i += 1
    ProductCategory.create({
        product_id: i,
        category_id: 6
    })
end