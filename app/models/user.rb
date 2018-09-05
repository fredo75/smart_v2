class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include PgSearch
  pg_search_scope :global_search,
    against: [ :username, :email ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  has_many :surveys, dependent: :destroy
  has_many :eco_actions
  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :given_likes, inverse_of: :follower, class_name: "Follow", foreign_key: "follower_id"
  has_many :received_likes, inverse_of: :followee, class_name: "Follow", foreign_key: "followee_id"

  has_many :liked_users, through: :given_likes, source: :followee
  has_many :liked_by_users, through: :received_likes, source: :follower
end
