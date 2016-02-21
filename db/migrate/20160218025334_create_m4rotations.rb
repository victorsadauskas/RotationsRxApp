class CreateM4rotations < ActiveRecord::Migration
  def change
    create_table :m4rotations do |t|
      t.string :name
      t.string :duration
      t.string :location
      t.string :hours

      t.timestamps
    end
  end
end
