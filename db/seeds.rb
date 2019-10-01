# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

User.create(name: "Aさん",
            email: "a@a.com",
            password: "111111",
            instrument: "ギター", 
            profile: "プロフィール1",
            additional_explanation: "プロフ1",
            video: "https://www.youtube.com/watch?v=nsi9HEmZl9Y&list=RDMMnsi9HEmZl9Y&start_radio=1"
            )

User.create(name: "Bさん",
            email: "b@b.com",
            password: "111111",
            instrument: "ベース", 
            profile: "プロフィール2",
            additional_explanation: "プロフ2",
            video: "https://www.youtube.com/watch?v=gy4ybN8hpyY&list=RDMMnsi9HEmZl9Y&index=2&loop=0"
            )

User.create(name: "Cさん",
            email: "c@c.com",
            password: "111111",
            instrument: "ベース", 
            profile: "プロフィール3",
            additional_explanation: "プロフ3",
            video: "https://www.youtube.com/watch?v=gy4ybN8hpyY&list=RDMMnsi9HEmZl9Y&index=2&loop=0"
            )

User.create(name: "Dさん",
            email: "d@d.com",
            password: "111111",
            instrument: "ギター", 
            profile: "プロフィール4",
            additional_explanation: "プロフ4",
            video: "https://www.youtube.com/watch?v=nsi9HEmZl9Y&list=RDMMnsi9HEmZl9Y&start_radio=1"
            )

User.create(name: "Eさん",
            email: "e@e.com",
            password: "111111",
            instrument: "ベース", 
            profile: "プロフィール5",
            additional_explanation: "プロフ5",
            video: "https://www.youtube.com/watch?v=gy4ybN8hpyY&list=RDMMnsi9HEmZl9Y&index=2&loop=0"
            )

User.create(name: "Fさん",
            email: "f@f.com",
            password: "111111",
            instrument: "ベース", 
            profile: "プロフィール6",
            additional_explanation: "プロフ6",
            video: "https://www.youtube.com/watch?v=gy4ybN8hpyY&list=RDMMnsi9HEmZl9Y&index=2&loop=0"
            )

User.create(name: "Gさん",
            email: "g@g.com",
            password: "111111",
            instrument: "ギター", 
            profile: "プロフィール7",
            additional_explanation: "プロフ7",
            video: "https://www.youtube.com/watch?v=nsi9HEmZl9Y&list=RDMMnsi9HEmZl9Y&start_radio=1"
            )
  
User.create(name: "Hさん",
            email: "h@h.com",
            password: "111111",
            instrument: "ベース", 
            profile: "プロフィール8",
            additional_explanation: "プロフ8",
            video: "https://www.youtube.com/watch?v=gy4ybN8hpyY&list=RDMMnsi9HEmZl9Y&index=2&loop=0"
            )
  
User.create(name: "Gさん",
            email: "g@g.com",
            password: "111111",
            instrument: "ベース", 
            profile: "プロフィール9",
            additional_explanation: "プロフ9",
            video: "https://www.youtube.com/watch?v=gy4ybN8hpyY&list=RDMMnsi9HEmZl9Y&index=2&loop=0"
            )

User.create(name: "Hさん",
                email: "h@h.com",
                password: "111111",
                instrument: "ギター", 
                profile: "プロフィール10",
                additional_explanation: "プロフ10",
                video: "https://www.youtube.com/watch?v=nsi9HEmZl9Y&list=RDMMnsi9HEmZl9Y&start_radio=1"
                )
    
User.create(name: "Iさん",
            email: "i@i.com",
            password: "111111",
            instrument: "ベース", 
            profile: "プロフィール11",
            additional_explanation: "プロフ11",
            video: "https://www.youtube.com/watch?v=gy4ybN8hpyY&list=RDMMnsi9HEmZl9Y&index=2&loop=0"
            )
    
User.create(name: "Jさん",
            email: "j@j.com",
            password: "111111",
            instrument: "ベース", 
            profile: "プロフィール12",
            additional_explanation: "プロフ12",
            video: "https://www.youtube.com/watch?v=gy4ybN8hpyY&list=RDMMnsi9HEmZl9Y&index=2&loop=0"
            )

Service.create( title: "さーびす1",
                user_id: "1"
)

Service.create( title: "さーびす2",
                user_id: "2"
)


Service.create( title: "さーびす3",
                user_id: "3"
)

Service.create( title: "さーびす4",
                user_id: "4"
)

Service.create( title: "さーびす5",
                user_id: "5"
)

Service.create( title: "さーびす6",
                user_id: "6"
)

Service.create( title: "さーびす7",
  user_id: "7"
)

Service.create( title: "さーびす8",
  user_id: "8"
)

Service.create( title: "さーびす9",
  user_id: "9"
)

Service.create( title: "さーびす10",
  user_id: "10"
)

Service.create( title: "さーびす11",
  user_id: "11"
)

Service.create( title: "さーびす12",
  user_id: "12"
)

Portfolio.create(
  portfolio01: "https://www.youtube.com/watch?v=pK4TtwgHdQ0&loop=0",
  user_id: "1"
)

Portfolio.create(
  portfolio01: "https://www.youtube.com/watch?v=pK4TtwgHdQ0&loop=0",
  user_id: "2"
)

Portfolio.create(
  portfolio01: "https://www.youtube.com/watch?v=pK4TtwgHdQ0&loop=0",
  user_id: "3"
)

Portfolio.create(
  portfolio01: "https://www.youtube.com/watch?v=pK4TtwgHdQ0&loop=0",
  user_id: "4"
)

Portfolio.create(
  portfolio01: "https://www.youtube.com/watch?v=pK4TtwgHdQ0&loop=0",
  user_id: "5"
)

Portfolio.create(
  portfolio01: "https://www.youtube.com/watch?v=pK4TtwgHdQ0&loop=0",
  user_id: "6"
)

Portfolio.create(
  portfolio01: "https://www.youtube.com/watch?v=pK4TtwgHdQ0&loop=0",
  user_id: "7"
)

Portfolio.create(
  portfolio01: "https://www.youtube.com/watch?v=pK4TtwgHdQ0&loop=0",
  user_id: "8"
)

Portfolio.create(
  portfolio01: "https://www.youtube.com/watch?v=pK4TtwgHdQ0&loop=0",
  user_id: "9"
)

Portfolio.create(
  portfolio01: "https://www.youtube.com/watch?v=pK4TtwgHdQ0&loop=0",
  user_id: "10"
)

Portfolio.create(
  portfolio01: "https://www.youtube.com/watch?v=pK4TtwgHdQ0&loop=0",
  user_id: "11"
)

Portfolio.create(
  portfolio01: "https://www.youtube.com/watch?v=pK4TtwgHdQ0&loop=0",
  user_id: "12"
)
