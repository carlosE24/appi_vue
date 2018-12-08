class Productos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string     :nombre_producto
      t.integer    :precio
     
      t.references :productos, foreign_key: true

      t.timestamps
  end
  end
end
