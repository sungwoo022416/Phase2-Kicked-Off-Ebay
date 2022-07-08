# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = [{
  name: "Book"
},
{
  name: "Games",
},
{
  name: "Figures"
},
{
  name: "Movies"
},
{
  name: "Coffee"
},
{
  name: "Electronics"
},
{
  name: "Camera"
},
{
  name: "Vehicle"
},
{
  name: "K-Pop"
},
{
  name: "Currency"
},
{
  name: "Furniture"
},
{
  name: "Beer"
}]

categories.each do |c|
  Category.create!(c)
end

j = 0

100.times do 

    User.create({
      name: "#{Faker::Name.initials(number: 2)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}",
      password: "1234".
      password_confirmation: "1234"
    })
    j += 1
    Interest.create({
      user_id: j,
      category_id: rand(1..4)
    })

    Interest.create({
      user_id: j,
      category_id: rand(5..8)
    })

    Interest.create({
      user_id: j,
      category_id: rand(9..12)
    })
end

i = 0

25.times do 

  Product.create({
    name: Faker::Book.title,
    category: "Books",
    price: "#{rand(1..1000)}",
    user_id: rand(1..100)
  })

  i += 1
  ProductCategory.create({
      product_id: i,
      category_id: 1
  })

  Bid.create({
    price: "#{rand(1.0..999.9).round(2)}",
    product_id: i,
    user_id: rand(1..100)
  })

  Product.create({
    name: Faker::Game.title,
    category: "Games",
    price: "#{rand(1..100)}",
    user_id: rand(1..100)
  })

  i += 1
  ProductCategory.create({
      product_id: i,
      category_id: 2
  })

  Bid.create({
    price: "#{rand(1.0..999.9).round(2)}",
    product_id: i,
    user_id: rand(1..100)
  })

  Product.create({
      name: Faker::JapaneseMedia::OnePiece.character,
      category: 'Figures',
      price: "#{rand(1..1000000)}",
      user_id: rand(1..100)
  })

  i += 1
  ProductCategory.create({
      product_id: i,
      category_id: 3
  })

  Bid.create({
    price: "#{rand(1.0..999.9).round(2)}",
    product_id: i,
    user_id: rand(1..100)
  })

  Product.create({
      name: Faker::Movie.title,
      category: 'Movies',
      price: "#{rand(1..50)}",
      user_id: rand(1..100)
  })

  i += 1
  ProductCategory.create({
      product_id: i,
      category_id: 4
  })

  Bid.create({
    price: "#{rand(1.0..999.9).round(2)}",
    product_id: i,
    user_id: rand(1..100)
  })
  
  Product.create({
      name: Faker::Coffee.blend_name,
      category: 'Coffee',
      price: "#{rand(1..1000)}",
      user_id: rand(1..100)
  })

  Bid.create({
    price: "#{rand(1.0..999.9).round(2)}",
    product_id: i,
    user_id: rand(1..100)
  })

  i += 1
  ProductCategory.create({
      product_id: i,
      category_id: 5
  })

  Product.create({
      name: Faker::Drone.name,
      category: 'Electronics',
      price: "#{rand(300..10000000000000)}",
      user_id: rand(1..100)
  })

  i += 1
  ProductCategory.create({
      product_id: i,
      category_id: 6
  })

  Bid.create({
    price: "#{rand(1.0..999.9).round(2)}",
    product_id: i,
    user_id: rand(1..100)
  })
  
  Product.create({
      name: Faker::Camera.brand_with_model,
      category: 'Camera',
      price: "#{rand(1..100000)}",
      user_id: rand(1..100)
  })
  
  i += 1
  ProductCategory.create({
      product_id: i,
      category_id: 7
  })

  Bid.create({
    price: "#{rand(1.0..999.9).round(2)}",
    product_id: i,
    user_id: rand(1..100)
  })

  Product.create({
    name: Faker::Vehicle.make_and_model,
    category: 'Vehicle',
    price: "#{rand(1..100000)}",
    user_id: rand(1..100)
})

  i += 1
  ProductCategory.create({
      product_id: i,
      category_id: 8
  })

  Bid.create({
    price: "#{rand(1.0..999.9).round(2)}",
    product_id: i,
    user_id: rand(1..100)
  })

  Product.create({
    name: Faker::Kpop.ii_groups,
    category: 'K-Pop',
    price: "#{rand(1..100000)}",
    user_id: rand(1..100)
})

  i += 1
  ProductCategory.create({
      product_id: i,
      category_id: 9
  })

  Bid.create({
    price: "#{rand(1.0..999.9).round(2)}",
    product_id: i,
    user_id: rand(1..100)
  })

  Product.create({
    name: Faker::Currency.name,
    category: 'Currency',
    price: "#{rand(1..100000)}",
    user_id: rand(1..100)
})

  i += 1
  ProductCategory.create({
      product_id: i,
      category_id: 10
  })

  Bid.create({
    price: "#{rand(1.0..999.9).round(2)}",
    product_id: i,
    user_id: rand(1..100)
  })

  Product.create({
    name: Faker::House.furniture,
    category: 'Furniture',
    price: "#{rand(1..100000)}",
    user_id: rand(1..100)
})

  i += 1
  ProductCategory.create({
      product_id: i,
      category_id: 11
  })

  Bid.create({
    price: "#{rand(1.0..999.9).round(2)}",
    product_id: i,
    user_id: rand(1..100)
  })

  Product.create({
    name: Faker::Beer.name,
    category: 'Beer',
    price: "#{rand(1..100000)}",
    user_id: rand(1..100)
})

  i += 1
  ProductCategory.create({
      product_id: i,
      category_id: 12
  })

  Bid.create({
    price: "#{rand(1.0..999.9).round(2)}",
    product_id: i,
    user_id: rand(1..100)
  })
end
