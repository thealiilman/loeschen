class Book < ApplicationRecord
  include Discard::Model

  belongs_to :author

  scope :kept, -> { undiscarded.joins(:author).merge(Author.kept) }
end
