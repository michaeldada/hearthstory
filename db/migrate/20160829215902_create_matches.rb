class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :deck_name
      t.text :notes

      t.timestamps
    end
  end
end
