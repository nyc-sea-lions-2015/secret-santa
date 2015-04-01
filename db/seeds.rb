user1 = User.create(first_name: 'Tara', email: 'tara@gmail.com', password: '1234')
user2 = User.create(first_name: 'Ben', email: 'ben@gmail.com', password: '1234')
user3 = User.create(first_name: 'Sally', email: 'sally@gmail.com', password: '1234')
user4 = User.create(first_name: 'Nora', email: 'nora@gmail.com', password: '1234')
user5 = User.create(first_name: 'Tom', email: 'tom@gmail.com', password: '1234')
user6 = User.create(first_name: 'Mike', email: 'mike@gmail.com', password: '1234')

group1 = Group.create(name: 'Sea Lions', creator: user1, spending_limit: 25.00, users: [user1, user2, user3])
group2 = Group.create(name: 'Jackals', creator: user4, spending_limit: 35.00, users: [user4, user5, user6])
group3 = Group.create(name: 'Phase Up', creator: user3, spending_limit: 100.00, users: [user1, user2, user3, user4, user5, user6])

like1 = Like.create(user: user1, content: 'Longboarding')
like2 = Like.create(user: user1, content: 'NY Knicks')
like3 = Like.create(user: user2, content: 'Obey clothing')
like4 = Like.create(user: user3, content: 'Steven King')
like5 = Like.create(user: user4, content: 'Sushi')
like6 = Like.create(user: user5, content: 'Kung fu Flix')
like7 = Like.create(user: user6, content: 'white wine')
