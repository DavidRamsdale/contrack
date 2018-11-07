# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Language.create([
    { name: "JavaScript"},
    { name: "Ruby"},
    { name: "Java"},
    { name: "Swift"},
    { name: "C/C++"},
    { name: "Python"},
    { name: "PHP"},
    { name: "C#"},
    { name: "Rust"},
    { name: "HTML"},
    { name: "CSS"}
])



2000.times do 
    User.create(
    email: Faker::Internet.email,
    full_name: Faker::FunnyName.name,
    password: '123456',
    is_contractor: true
    )
end
x = 1
2000.times do
    Contractor.create(
        lvl_of_exp: rand(0..2),
        user_id: x,
        engineer_type: rand(0..2),
        city: rand(0..7),
        pay_range: rand(0..5),
        pref_contract:  rand(0..3),
        will_move: Faker::Boolean.boolean,
        available_now: Faker::Boolean.boolean,
        photo: Faker::LoremFlickr.image,
        end_date: (Time.now.to_date..Date.new(2020,1,1)).to_a.sample)
    x += 1
end
y=1
2000.times do
    LanguageUser.create(
    user_id: y,
    language_id: rand(1..3)
    )

    LanguageUser.create(
    user_id: rand(1..100),
    language_id: rand(4..8)
    )

    LanguageUser.create(
    user_id: rand(1..100),
    language_id: rand(9..11)
    )
    y += 1
end