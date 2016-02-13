class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.integer :rating
      t.references :rotation, index: true

      t.timestamps
    end
  end
end
