class BookComment < ApplicationRecord

    belongs_to :user
    belongs_to :book
    validates :comment, length: {in: 2..150}
end
