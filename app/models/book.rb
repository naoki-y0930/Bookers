class Book < ApplicationRecord

  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true, length: {maximum: 200}
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def self.search(search, num)
    if num == "1"
      return Book.all unless search
       Book.where("title like ?", "#{search}%" )
    elsif num == "2"
      return Book.all unless search
       Book.where(['title LIKE ?', "%#{search}"])
     elsif num == "3"
       return Book.all unless search
       Book.where(['title LIKE ?', "%#{search}%"])
     elsif num == "4"
       return Book.all unless search
       Book.where(['title LIKE ?', "#{search}"])
     else
       return Book.all unless search
     end
    end
   end
