# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do 
    Product.create({
      name: Faker::Book.title,
      category: "book",
      price: "$#{rand(1..100000000)}"
    })

    Product.create({
      name: Faker::Game.title,
      category: "game",
      price: "$#{rand(1..100000000)}"
    })

    Product.create({
        name: Faker::JapaneseMedia::OnePiece.character,
        category: 'figure',
        price: "$#{rand(1..100000000)}"
    })

    Product.create({
        name: Faker::Movie.title,
        category: 'movie',
        price: "$#{rand(1..100000000)}"
    })

    Product.create({
        name: Faker::Drone.name,
        category: 'electronic',
        price: "$#{rand(1..100000000)}"
    })

    Product.create({
        name: Faker::Camera.brand_with_model,
        category: 'electronic',
        price: "$#{rand(1..100000000)}"
    })

    Product.create({
        name: Faker::Coffee.blend_name,
        category: 'coffee',
        price: "$#{rand(1..100000000)}"
    })
end



  