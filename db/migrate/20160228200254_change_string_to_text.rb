class ChangeStringToText < ActiveRecord::Migration
  def change
  	change_column :m4comments, :body, :text
  end
end
