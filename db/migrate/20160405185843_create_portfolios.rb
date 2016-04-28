class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :portfolioName
      t.integer :seqNo

      t.timestamps null: false
    end
  end
end
