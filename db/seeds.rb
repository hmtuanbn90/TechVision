# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name:"Hoang Tung",password:"123456",email:"hoangvantung.it@gmail.com",admin:true )
User.create(name:"Hoang Tuan",password:"123456",email:"hoangvantuan.it@gmail.com",admin:true )
User.create(name:"Nguyen Duy",password:"123456",email:"hoangvanduy.it@gmail.com",admin:true )
User.create(name:"Nguyen Duy",password:"zxczxc",email:"duyn02992@gmail.com",admin:true )
User.create(name:"Hoang Tung1",password:"123456",email:"hoangvantung1.it@gmail.com",admin:false )
User.create(name:"Hoang Tung2",password:"123456",email:"hoangvantung2.it@gmail.com",admin:false )
User.create(name:"Hoang Tung3",password:"123456",email:"hoangvantung3.it@gmail.com",admin:false )
User.create(name:"Hoang Tung4",password:"123456",email:"hoangvantung4.it@gmail.com",admin:false )
User.create(name:"Hoang Tung5",password:"123456",email:"hoangvantung5.it@gmail.com",admin:false )
Topic.create(name:"Sony",about:"thuong hieu noi tieng den tu Nhat Ban" )
Topic.create(name:"Xiaomi",about:"thuong hieu noi tieng den tu Trung Quoc" )


Review.create(title:"Xiaomi ra mat mibad 1",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp",hot:false ,view:20,topic_id:1, appended: true )
Review.create(title:"Xiaomi ra mat mibad 2",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp",hot:false,view:202,topic_id:2, appended: true )
Review.create(title:"Xiaomi ra mat mibad 3",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp",hot:true,view:202,topic_id:1, appended: true )
Review.create(title:"Xiaomi ra mat mibad 4",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp",hot:false,view:202,topic_id:2, appended: true)
Review.create(title:"Xiaomi ra mat mibad 5",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp", hot:true, view:202,topic_id:2, appended: true )
Review.create(title:"Xiaomi ra mat mibad 6",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp", hot:true, view:202,topic_id:2, appended: true )
Review.create(title:"Xiaomi ra mat mibad 7",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp", hot:true, view:202,topic_id:2, appended: true )
Review.create(title:"Xiaomi ra mat mibad 8",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp", hot:true, view:202,topic_id:2, appended: true )
Review.create(title:"Xiaomi ra mat mibad 9",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp", hot:true, view:202,topic_id:2, appended: true )
Review.create(title:"Xiaomi ra mat mibad 10",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp", hot:true, view:202,topic_id:2, appended: true )
Review.create(title:"Xiaomi ra mat mibad 11",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp", hot:true, view:202,topic_id:2, appended: true )

Hashtag.create(name:"#nokia")
Hashtag.create(name:"#sony")
Hashtag.create(name:"#xiaomi")
Hashtag.create(name:"#samsung")

HashtagDetail.create(hashtag_id:1 , review_id:1)
HashtagDetail.create(hashtag_id:2 , review_id:1)
HashtagDetail.create(hashtag_id:3 , review_id:2)
HashtagDetail.create(hashtag_id:4 , review_id:3)
HashtagDetail.create(hashtag_id:1 , review_id:3)
HashtagDetail.create(hashtag_id:2 , review_id:4)
HashtagDetail.create(hashtag_id:3 , review_id:5)

Like.create(user_id:1 , review_id:3)
Like.create(user_id:2 , review_id:1)
Like.create(user_id:3 , review_id:1)
Like.create(user_id:1 , review_id:2)
Like.create(user_id:2 , review_id:3)
Like.create(user_id:3 , review_id:4)
Like.create(user_id:1 , review_id:5)
Like.create(user_id:2 , review_id:2)
Like.create(user_id:3 , review_id:3)
Like.create(user_id:1 , review_id:4)
Like.create(user_id:2 , review_id:5)

