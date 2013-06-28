class AddApprovedToAtom < ActiveRecord::Migration
  def change
    add_column :atoms, :approved, :boolean
  end
end
