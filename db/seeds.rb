Channel.create!([
  {name: "Zee"},
  {name: "Star Movies"},
  {name: "Etv Telugu"},
  {name: "Tv9"}
])
TvShow.create!([
  {name: "Challenge", telecast_time: "2000-01-01 17:38:43", channel_id: 1},
  {name: "Bahubali", telecast_time: "2000-01-01 18:24:38", channel_id: 2},
  {name: "Bahubali 2", telecast_time: "2000-01-01 18:24:44", channel_id: 2},
  {name: "Athadu", telecast_time: "2000-01-01 18:24:57", channel_id: 2},
  {name: "Abhiruchi", telecast_time: "2000-01-01 18:25:24", channel_id: 3},
  {name: "Gantaravam", telecast_time: "2000-01-01 18:25:34", channel_id: 3},
  {name: "Mukhamukhi", telecast_time: "2000-01-01 18:25:54", channel_id: 4}
])
User.create!([
  {email: "hari@test.com", encrypted_password: "$2a$11$8QqEt52cAPyImgb17ZkzcueKh5lLYgCljKWs7m/9u2QSuDlMcjwSS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Favourite.create!([
  {user_id: 1, tv_show_id: 1},
  {user_id: 1, tv_show_id: 3},
  {user_id: 1, tv_show_id: 2},
  {user_id: 1, tv_show_id: 4}
])
