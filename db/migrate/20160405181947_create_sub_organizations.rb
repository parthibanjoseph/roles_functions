class CreateSubOrganizations < ActiveRecord::Migration
  def change
    create_table :sub_organizations do |t|
      #t.integer :subOrganizationId
      t.string :subOrganizationName
      t.integer :seqNo
      t.references :external_organization, index: true, foreign_key: true

      t.timestamps null: false
    end
      #add_index :sub_organizations, :subOrganizationId, unique: true
      #add_foreign_key :sub_organizations, :external_organizations, column:  :externalOrganizationId, primary_key: :externalOrganizationId
  end
end
