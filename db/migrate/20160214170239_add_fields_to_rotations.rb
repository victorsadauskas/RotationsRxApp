class AddFieldsToRotations < ActiveRecord::Migration
  def change
    add_column :rotations, :duration, :string
    add_column :rotations, :location, :string
    add_column :rotations, :hours, :string
  end
end
