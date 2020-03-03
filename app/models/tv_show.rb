class TvShow < ApplicationRecord
  belongs_to :channel
  has_many :viewers, class_name: 'Favourite', foreign_key: 'user_id'
  has_many :users, through: :viewers

  scope :upcoming, -> (time) { where(telecast_time: Time.now..(Time.now + time )) }

  def notify_viewer
    users.each do |user|
      NotificationMailer.notify_viewer(user.id, id)
    end
  end
end
