class AddPapersToAuthor < ActiveRecord::Migration
  def change
    add_reference :authors, :paper, index: true, foreign_key: true

    create_table :authors_papers, id: false do |t|
      t.belongs_to :author, index: true
      t.belongs_to :paper, index: true
    end
  end
end
