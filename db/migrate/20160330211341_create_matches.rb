class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :winning_state, default: 0
      t.integer :current_player, default: 1

      t.timestamps null: false
    end
  end
end
