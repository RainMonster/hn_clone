u1 = User.create(username: 'bob', password: 'bob')
u2 = User.create(username: 'mark', password: 'mark')
u3 = User.create(username: 'sophie', password: 'sophie')
users = [u1, u2, u3]

10.times do
  post = Post.create(title: "My awesome title", url: "http://www.google.com")
  post.user = users.sample
  post.save
end

