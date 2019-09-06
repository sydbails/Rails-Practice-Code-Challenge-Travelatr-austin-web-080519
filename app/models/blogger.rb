class Blogger < ApplicationRecord
    validates :age, numericality: { greater_than: 0}
    
    has_many :posts
    has_many :destinations, through: :posts
end
