# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"Hoang Tung",password:"123456",email:"hoangvantung.it@gmail.com",admin:true )
Topic.create(name:"Sony",about:"thuong hieu noi tieng den tu Nhat Ban" )
Topic.create(name:"Xiaomi",about:"thuong hieu noi tieng den tu Trung Quoc" )
Review.create(title:"apple ra ios 13",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp",hot:false ,view:20,topic_id:1 )
Review.create(title:"Xiaomi tung mi9",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp",hot:false,view:202,topic_id:2 )
Review.create(title:"apple ra phien ban ios 12",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp",hot:true,view:202,topic_id:1 )
Review.create(title:"Xiaomi ra mat mibad 4",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp",hot:false,view:202,topic_id:2 )
Review.create(title:"Xiaomi ra mat mibad 4444444444444444444",user_id:1,content:"Ngoài Twitter hay Instagram thì nhiều dịch vụ khác cũng tích hợp hashtag vào hệ thống của mình, ví dụ như trong hệ thống đăng lời bình luận của YouTube hay Google+. Những công cụ tìm kiếm theo thời gian thực như Google Real-Time Search (một tính năng của Google Search) sẽ tự theo dõi một hashtag do bạn chỉ định để liên tục hiển thị những bài post được gắn tag đó.",about:"hashtag còn được cộng đồng mạng sử dụng như một biện pháp để giải bày một trạng thái nào đó liên quan đến thông điệp", hot:true, view:202,topic_id:2, appended: true )
Hashtag.create(name:"#nokia")
Hashtag.create(name:"#sony")
Hashtag.create(name:"#xiaomi")
Hashtag.create(name:"#samsung")
