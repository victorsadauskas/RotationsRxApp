class AddFieldsToRotations < ActiveRecord::Migration
  def change
    add_column :rotations, :hours, :integer
    add_column :rotations, :location, :text
    add_column :rotations, :duration, :string
    add_column :rotations, :text, :string
  end
end
