class AddUserClassToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :user_class, :number
  end
end
