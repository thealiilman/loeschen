class Book < ApplicationRecord
  belongs_to :author

  scope :kept, -> { joins(:author).merge(Author.kept) }
end
