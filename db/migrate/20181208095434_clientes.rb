class Clientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.integer :rfc
      t.string :nombre_cliente
      t.timestamps null: false
  end
  end
end
