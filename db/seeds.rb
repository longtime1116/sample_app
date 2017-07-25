User.create!(name:  "longtime",
             email: "longtime@gmail.com",
             password:              "hogehoge",
             password_confirmation: "hogehoge",
             admin: true)

User.create!(name:  "hoge",
             email: "hoge@gmail.com",
             password:              "hogehoge",
             password_confirmation: "hogehoge",
             admin: true)

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: false)

98.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
