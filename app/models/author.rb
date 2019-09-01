class Author < ApplicationRecord
  include Discard::Model

  belongs_to :publisher, optional: true
  has_many :books, dependent: :destroy

  before_discard { puts 'Hallo before_discard!' }
  after_discard { puts 'after_discard!' }

  before_undiscard { puts 'Waving at you before_undiscard...' }
  after_undiscard { puts 'Yay after_undiscard!' }
end
