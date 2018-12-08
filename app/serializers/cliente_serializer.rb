class ClienteSerializer < ActiveModel::Serializer
    attributes :id, :rfc, :nombre_cliente,  :created_at
  end