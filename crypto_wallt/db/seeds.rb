# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tipos = [
    {
    description:"Proof of Work" ,
    acronym:"SoW" ,
    },

    {
    description:"Proof of Stake" ,
    acronym:"SoS" ,
    }

    {
    description:"Proof of Capacity" ,
    acronym:"SoC" ,
    }
]

tipos.each do |tipo| 
    MiningType.find_or_create_by!(tipo)
end

puts "Tipos de Moedas Cadastradas !"


coins = [
    {
    description:"Bitcoin" ,
    acronym:"BTC" ,
    url_image:
    "https://upload.wikimedia.org/wikipedia/commons/c/cf/Bitcoin.com_logo.png",
    mining_type: MiningType.where(acronym: 'SoW').first
    },
    {
    description:"Etherium" ,
    acronym:"ETH" ,
    url_image:
    "https://s2.coinmarketcap.com/static/img/coins/200x200/1027.png" ,
    mining_type: MiningType.all.sample
    },
    {
    description:"Dash" ,
    acronym:"D" ,
    url_image:
    "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png" ,
    mining_type: MiningType.all.sample
    },
    {
    description:"Zcash" ,
    acronym:"ZEC" ,
    url_image:
    "https://d87vq4ek5czrn.cloudfront.net/wp-content/uploads/2019/02/zec.png" ,
    mining_type: MiningType.all.sample
    }
]

coins.each do |coin| 
    Coin.find_or_create_by!(coin)
end

puts "Moedas Cadastradas !"
