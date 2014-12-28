class Post < ActiveRecord::Base
    has_many :comments
    validates :title, presence: true, length: {minimum: 5}
    validates :body, presence: true
    validates :category, presence: true

    def self.search(search)
        where("category LIKE ?", "%#{search.downcase}%")
    end
end
