class AddOpponentClassToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :opp_class, :number
  end
end
