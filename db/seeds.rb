codaisseur = School.create(name: "Codaisseur", city:"Amsterdam", rating: 5)

Teacher.create( name: "Wouter de Vos", nickname: "foxycoder", subject: "Full Stack Teacher", school:codaisseur , image:"https://codaisseur-production.s3.amazonaws.com/uploads/team_member/avatar/1/small_codaisseur-portraits-27-jpg-cb64901ab564a35a59906130ff5970bf.png")
Teacher.create( name: "Miriam Tocino", nickname: "miriamtocino", subject: "Ruby on Rails Teacher", school:codaisseur , image: "https://codaisseur-production.s3.amazonaws.com/uploads/team_member/avatar/4/small_img_20160328_194531-4-jpg-1427b38223729b91055f9196d175e34f.png")
Teacher.create( name: "Benjamin Udink ten Cate", nickname: "hezus", subject: "Full Stack Teacher  ", school:codaisseur , image: "https://codaisseur-production.s3.amazonaws.com/uploads/team_member/avatar/7/small_ben-jpg-adab811bf5978dd98a280c8a3f81eec8.png")
Teacher.create( name: "Rory Koehein", nickname: "nextminds", subject: "React & Javascript", school:codaisseur , image: "https://codaisseur-production.s3.amazonaws.com/uploads/team_member/avatar/5/small_rory-bw-jpg-2aa433d979259724eb9cd3daa44984d3.png")
Teacher.create( name: "Tadeusz Łazurski", nickname:"Izirski",  subject: "React & Javascript", school:codaisseur , image: "https://codaisseur-production.s3.amazonaws.com/uploads/team_member/avatar/8/small_tadeusz-jpeg-1601d28894359f944e9ad94b2c87c396.png")
