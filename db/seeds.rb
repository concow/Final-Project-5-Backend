# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting data..."
puts

# User.destroy_all
Stock.destroy_all

puts "Seeding"

User.create(username: "test", email: "test", password_digest: "password", user_balance: 123.23)
User.create(username: "jonnyboy", email: "jb@gmail.com", password_digest: "password", user_balance: 1200.23)
User.create(username: "jillygirl", email: "jg@gmail.com", password_digest: "password", user_balance: 134000)
User.create(username: "tommyboy", email: "tb@gmail.com", password_digest: "password", user_balance: 150000)



Stock.create(company: "Apple", symbol: "AAPL", price: 148.85)
Stock.create(company: "Tesla", symbol: "TSLA", price: 1037.86)
Stock.create(company: "NVIDIA", symbol: "NVDA", price: 244.36)
Stock.create(company: "Microsoft", symbol: "MSFT", price: 323.17)
Stock.create(company: "Gamestop", symbol: "GME", price: 173.51)
Stock.create(company: "Alibaba", symbol: "BABA", price: 169.23)
Stock.create(company: "Berkshire Hathaway Class A", symbol: "BRK.A", price: 433159.00)
Stock.create(company: "Alphabet", symbol: "GOOGL", price: 2928.55)
Stock.create(company: "3M", symbol: "MMM", price: 178.24)
Stock.create(company: "AT&T", symbol: "T", price: 25.06)
Stock.create(company: "Boeing", symbol: "BA", price: 206.61)
Stock.create(company: "Chipotle Mexican Grill", symbol: "CMG", price: 1766.06)
Stock.create(company: "Costco", symbol: "COST", price: 489.11)
Stock.create(company: "Intel", symbol: "INC", price: 47.89)
Stock.create(company: "IBM", symbol: "IBM", price: 125.17)
Stock.create(company: "Amazon", symbol: "AMZN", price: 3392.49)
Stock.create(company: "Walt Disney Company", symbol: "DIS", price: 169.55)
Stock.create(company: "Pfizer", symbol: "PFE", price: 42.97)
Stock.create(company: "Salesforce", symbol: "CRM", price: 295.15)
Stock.create(company: "Advanced Micro Devices", symbol: "AMD", price: 122.28)
Stock.create(company: "Gilead Sciences", symbol: "GILD", price: 66.77)
Stock.create(company: "Etsy", symbol: "ETSY", price: 243.89)
Stock.create(company: "McDonald's", symbol: "MCD", price: 242.73)
Stock.create(company: "Alaska Air Group", symbol: "ALK", price: 52.71)
Stock.create(company: "Home Depot", symbol: "HD", price: 372.32)
Stock.create(company: "Cisco Systems", symbol: "CSCO", price: 56.18)
Stock.create(company: "Netflix", symbol: "NFLX", price: 662.92)
Stock.create(company: "Datadog", symbol: "DDOG", price: 157.09)
