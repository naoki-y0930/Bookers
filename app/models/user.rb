class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_many :following_relationships, foreign_key: "follower_id", class_name: "Relationship", dependent: :destroy
  has_many :followings, through: :following_relationships
  has_many :follower_relationships, foreign_key: "following_id", class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :follower_relationships

  def following?(other_user)
    following_relationships.find_by(following_id: other_user.id)
  end
  def follow!(other_user)
    following_relationships.create!(following_id: other_user.id)
  end
  def unfollow!(other_user)
    following_relationships.find_by(following_id: other_user.id).destroy
  end

  attachment :profile_image
  validates :name, length: {in: 2..20}
  validates :introduction, length: {maximum: 50}


def self.search(search, num)
  case num
  when "1"
    return User.all unless search
    User.where('name LIKE ?', "#{search}%")
  when "2"
    return User.all unless search
    User.where('name LIKE ?', "%#{search}")
  when "3"
    return User.all unless search
    User.where('name LIKE ?', "%#{search}%")
  when "4"
    return User.all unless search
    User.where('name LIKE ?', "#{search}")
  else
    User.all
  end
end

         def email_required?
           false
         end

         def email_changed?
           false
         end
end
