class AddCompanyToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :company, :string
  end
end
