class CreateResponsibilities < ActiveRecord::Migration
  def change
    create_table :responsibilities do |t|
      t.string :responsibilityName
      t.integer :seqNo
      t.references :sub_organization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
