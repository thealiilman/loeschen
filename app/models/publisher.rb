class Publisher < ApplicationRecord
  has_many :authors, dependent: :nullify
  has_many :books, through: :authors
end
