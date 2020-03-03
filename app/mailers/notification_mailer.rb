class NotificationMailer < ApplicationMailer
  def notify_viewer user_id, show_id
    @show = TvShow.find_by(id: show_id)
    @user = User.find_by(id: user_id)
    mail(to: @user.email, subject: "Upcoming Tv show in next 30 minutes #{ @show.name }", from: "tvalert@email.com").deliver
  end
end
