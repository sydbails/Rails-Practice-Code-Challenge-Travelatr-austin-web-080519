class Post < ApplicationRecord
    validates: content, length: { minimum: 30 }
    belongs_to :blogger
    belongs_to :destination
end
