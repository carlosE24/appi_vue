class Producto < ApplicationRecord
  
    validates :nombre_producto, presence: true
    validates :precio, presence: true
  end