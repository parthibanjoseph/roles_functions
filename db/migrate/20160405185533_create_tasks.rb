class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :taskName
      t.integer :seqNo
      t.references :life_cycle_step, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
