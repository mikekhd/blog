class CreateAtomUsers < ActiveRecord::Migration
  def change
    create_table :atom_users do |t|

      t.timestamps
    end
  end
end
