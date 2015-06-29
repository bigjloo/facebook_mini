User.create(email: "user1@gmail.com", password: "test")
User.create(email: "user2@gmail.com", password: "test")

Profile.create(fullname: "User One", date_of_birth: "1999-01-01", user_id: 1)
Profile.create(fullname: "User Two", date_of_birth: "2000-02-02", user_id: 2)

Feed.create(content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown.", user_id: 1 )
Feed.create(content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer.", user_id: 1 )
Feed.create(content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer.", user_id: 2 )

Tag.create(title: "AAA")
Tag.create(title: "BBB")
Tag.create(title: "CCC")

FeedsTag.create(feed_id: 1, tag_id: 1)
FeedsTag.create(feed_id: 1, tag_id: 2)
FeedsTag.create(feed_id: 2, tag_id: 3)
FeedsTag.create(feed_id: 3, tag_id: 3)
FeedsTag.create(feed_id: 3, tag_id: 1)

Comment.create(feed_id: 1, user_id: 1, comment_content: " This is comment 1")
Comment.create(feed_id: 2, user_id: 2, comment_content: " This is comment 2")
Comment.create(feed_id: 1, user_id: 2, comment_content: " This is comment 3")
