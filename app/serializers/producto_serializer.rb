class ProductosSerializer < ActiveModel::Serializer
    attributes :id, :nombre_producto, :precio
  end