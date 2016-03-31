class AddGridItegersToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :a1, :integer
    add_column :matches, :a2, :integer
    add_column :matches, :a3, :integer
    add_column :matches, :b1, :integer
    add_column :matches, :b2, :integer
    add_column :matches, :b3, :integer
    add_column :matches, :c1, :integer
    add_column :matches, :c2, :integer
    add_column :matches, :c3, :integer
  end
end
