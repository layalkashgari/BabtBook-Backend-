# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nadia = User.create({name: "Nadia", email: "nadiamuh@hotmail.com", password: "k1llPupz"})
samia = User.create({name: "Samiyah", email: "samiamuh@gmail.com", password: "r41nB0Wz"})

Book.create({name: 'Layal', user: nadia})
Book.create({name: 'Rafal',  user: samia})
Book.create({name: 'Lujain', user: nadia})
Book.create({name: 'Renad',  user: samia})


Page.create({name: 'first day', number: "1", book_id: "1"})
Page.create({name: 'month one', number: "2", book_id: "1"})
Page.create({name: 'month two', number: "3", book_id: "1"})
Page.create({name: 'month three', number: "4", book_id: "1"})
Page.create({name: 'month four', number: "5", book_id: "1"})


Text.create({content: '3:44'})
Text.create({content: 'Monday'})
Text.create({content: 'Yes'})
Text.create({content: '3'})
Text.create({content: '65'})
Text.create({content: 'music'})
Text.create({content: 'morning'})
Text.create({content: 'your sister'})

Image.create({name:'https://www.google.com.sa/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjQ_pbbt5PgAhUu1uAKHcUYDxsQjRx6BAgBEAU&url=https%3A%2F%2Fwww.ralphlauren.com%2Fbaby-babys-first-feat&psig=AOvVaw2S_fWfaRw287rrZvpzEgZK&ust=1548866556182167', date:"12/02/2019",
 page_id:3 })
Image.create({name:'https://www.google.com.sa/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjQ_pbbt5PgAhUu1uAKHcUYDxsQjRx6BAgBEAU&url=https%3A%2F%2Fwww.ralphlauren.com%2Fbaby-babys-first-feat&psig=AOvVaw2S_fWfaRw287rrZvpzEgZK&ust=1548866556182167', date:"12/05/2016",
 page_id:3 })










