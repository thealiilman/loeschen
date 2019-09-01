class Author < ApplicationRecord
  acts_as_paranoid

  belongs_to :publisher, optional: true
  has_many :books, dependent: :destroy
end
