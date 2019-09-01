class Author < ApplicationRecord
  belongs_to :publisher, optional: true
  has_many :books, dependent: :nullify
end
