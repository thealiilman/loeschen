class AddPublisherToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_reference :authors, :publisher, foreign_key: true
  end
end
