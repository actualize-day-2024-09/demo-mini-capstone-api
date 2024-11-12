class AddSupplierIdToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :supplier_id, :integer
  end
end
