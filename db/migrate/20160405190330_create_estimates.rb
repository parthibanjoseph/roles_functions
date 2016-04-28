class CreateEstimates < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.integer :tonnage
      t.integer :effort
      t.references :responsibility, index: true, foreign_key: true
      t.references :task, index: true, foreign_key: true
      t.references :portfolio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
