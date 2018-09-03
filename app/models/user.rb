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
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
