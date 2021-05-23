# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying Products..."
puts "Products destroyed!" if Product.destroy_all
puts "Destroying Users.."
puts "Users destroyed!" if User.destroy_all

puts "Generating seed..."

User.create!(email: 'lovingchinchilla@gmail.com', name: 'Loving Chinchilla', password: "123456", password_confirmation: "123456", admin: false)
  Product.create(user_id: User.last.id, name: "Ração para Chinchila Megazoo", description:
    "Alimento completo para chinchilas. Os chinchilas são roedores herbívoros, com características mais específicas. A maior particularidade dessa espécie é uma alta tendência de problemas de obstrução intestinal por bolas de pêlo. Para evitar tais ocorrências, a Megazoo atuou cuidadosamente na seleção de fibras especiais que estimulam a passagem desses pêlos pelo trato intestinal. Procurou-se também adicionar ingredientes que possam contribuir para deixar os chinchilas mais tranquilos com menor possibilidade de estresse.",
    price: 42)
    Product.last.photo.attach(io: File.open('app/assets/images/food_01.jpg'), filename: 'food_01.jpg', content_type: 'image/jpg')
  
    Product.create(user_id: User.last.id, name: "Ração Alcon Roedores Frutas Legumes - 75g", description:
      "- Indicada para roedores;
      - Formulada com legumes e frutas desidratadas;
      - Ótima fonte de fibras e vitaminas para seu pet;
      - Alimenta e diverte seu roedor,
      - A embalagem contém 75g.",
      price: 20)
      Product.last.photo.attach(io: File.open('app/assets/images/food_02.jpg'), filename: 'food_02.jpg', content_type: 'image/jpg')

User.create!(email: 'seuroedor@gmail.com', name: 'Seu Roedor', password: "123456", password_confirmation: "123456", admin: false)
    Product.create(user_id: User.last.id, name: "Barrinha Alimento para Roedores Zootekna", description:
    "A Barrinha Alimento para Roedores Zootekna é elaborada com ingredientes selecionados, vitaminas e minerais de alta qualidade. Produzido cm sementes e frutas servindo como distrativos, imitando a obtenção de alimentos encontrados na natureza. Auxilia o roedor no desgaste da dentição.",
    price: 50)
    Product.last.photo.attach(io: File.open('app/assets/images/food_03.jpg'), filename: 'food_03.jpg', content_type: 'image/jpg')

User.create!(email: 'admin@gmail.com', name: 'Admin',password: "123456", password_confirmation: "123456", admin: true)
  # Product.create(user_id: User.last.id, name: "Ração Alcon Roedores Frutas Legumes - 75g", description:
  #   "- É uma ótima fonte de fibras e vitaminas;
  #   - Sua embalagem contém 75g,
  #   - Seu bichinho se distrai enquanto come o petisco.",
  #   price: 20)
    

puts "End of Seed!"