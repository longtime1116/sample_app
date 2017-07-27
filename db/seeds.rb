User.create!(name:  "longtime",
             email: "longtime@gmail.com",
             password:              "hogehoge",
             password_confirmation: "hogehoge",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "hoge",
             email: "hoge@gmail.com",
             password:              "hogehoge",
             password_confirmation: "hogehoge",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

98.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               admin: true,
               activated: true,
               activated_at: Time.zone.now)

end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end
