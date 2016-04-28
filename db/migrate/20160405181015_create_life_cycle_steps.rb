class CreateLifeCycleSteps < ActiveRecord::Migration
  def change
    create_table :life_cycle_steps do |t|
      #t.integer :lifeCycleStepId
      t.string :lifeCycleStepName
      t.integer :seqNo

      t.timestamps null: false
    end
      #add_index :life_cycle_steps, :lifeCycleStepId, unique: true
  end
end
