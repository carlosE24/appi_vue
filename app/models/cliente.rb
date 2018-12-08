class Cliente < ApplicationRecord
    validates :rfc, presence: true
    validates :nombre_cliente, presence: true
    has_many :ordenes
  end  