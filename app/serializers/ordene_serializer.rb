class OrdenesSerializer < ActiveModel::Serializer
    attributes :id, :cliente_id, :num_orden, :fecha
    
  end