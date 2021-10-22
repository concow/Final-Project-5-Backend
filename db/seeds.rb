# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting data..."
puts

User.destroy_all
Stock.destroy_all

puts "Seeding"

User.create!(username: "test", email: "test", password_digest: "password", user_balance: 123.23)
User.create!(username: "jonnyboy", email: "jb@gmail.com", password_digest: "password", user_balance: 1200.23)
User.create!(username: "jillygirl", email: "jg@gmail.com", password_digest: "password", user_balance: 134000)
User.create!(username: "tommyboy", email: "tb@gmail.com", password_digest: "password", user_balance: 150000)



Stock.create!(company: "Apple Inc.", symbol: "AAPL", price: 148.58)
Stock.create!(company: "Tesla", symbol: "TSLA", price: 148.58)
Stock.create!(company: "Nvidia", symbol: "NVDA", price: 148.58)
Stock.create!(company: "Microsoft", symbol: "MSFT", price: 148.58)
# Stock.create!(company: "Gamestop", symbol: "GME", price: 148.58)
# Stock.create!(company: "Alibaba", symbol: "BABA", price: 148.58)
# Stock.create!(company: "Alphabet", symbol: "AAPL", price: 148.58)
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "Salesforce", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )
# Stock.create!(company: "", symbol: "", price: )

