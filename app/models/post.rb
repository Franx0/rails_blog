class Post < ActiveRecord::Base
    has_many :comments
    validates :title, presence: true, length: {minimum: 5}
    validates :body, presence: true
    validates :category, presence: true
    default_scope { order("created_at DESC") }
    def self.search(search)
        where("LOWER (title) LIKE ? OR LOWER (body) LIKE ?", "%#{search.downcase}%", "%#{search.downcase}%")
    end
end
