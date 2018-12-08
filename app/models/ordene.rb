class Ordene < ApplicationRecord
    belongs_to :cliente, dependent: :destroy
    validates :num_orden, presence: true
    validates :fecha, presence: true
  end