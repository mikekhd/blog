class CreateAtomUsers < ActiveRecord::Migration
  def change
    create_table :atom_users do |t|
      t.integer :atom_id, :foreign_key => true
      t.integer :user_id, :foreign_key => true
      t.timestamps
    end
  end
end
