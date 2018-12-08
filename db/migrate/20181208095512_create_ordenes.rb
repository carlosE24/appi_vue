class CreateOrdenes < ActiveRecord::Migration[5.2]
  def change
    create_table :ordenes do |t|
      t.integer :num_orden
      t.date :fecha
      t.belongs_to :cliente, index: true
      
      t.timestamps null: false

  end
  end
end
