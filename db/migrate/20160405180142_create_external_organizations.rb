class CreateExternalOrganizations < ActiveRecord::Migration
  def change
    create_table :external_organizations do |t|
      #t.integer :externalOrganizationId
      t.string :externalOrganizationName
      t.integer :seqNo

      t.timestamps null: false
    end
      #add_index :external_organizations, :externalOrganizationId, unique: true
  end
end
