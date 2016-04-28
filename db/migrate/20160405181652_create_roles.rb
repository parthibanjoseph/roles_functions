class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      #t.integer :roleId
      t.string :roleName
      t.integer :seqNo

      t.timestamps null: false
    end
      #add_index :roles, :roleId, unique: true
  end
end
