class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.belongs_to :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
