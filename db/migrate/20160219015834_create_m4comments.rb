class CreateM4comments < ActiveRecord::Migration
  def change
    create_table :m4comments do |t|
      t.string :name
      t.string :body
      t.integer :rating
      t.references :m4rotation, index: true

      t.timestamps
    end
  end
end
