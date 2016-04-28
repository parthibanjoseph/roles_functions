class CreateSurfaces < ActiveRecord::Migration
  def change
    create_table :surfaces do |t|
      t.integer :isRelated :limit => 1 
      t.references :role, index: true, foreign_key: true
      t.references :task, index: true, foreign_key: true
      t.references :portfolio, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
