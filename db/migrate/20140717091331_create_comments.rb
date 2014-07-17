class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :release

      t.timestamps
    end
    add_index :comments, :release_id
  end
end
