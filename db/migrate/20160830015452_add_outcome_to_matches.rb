class AddOutcomeToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :outcome, :number
  end
end
