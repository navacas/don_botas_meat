class Pedido < ApplicationRecord
  validates :cantidad, presence: true, numericality: { only_integer: true }
  validates :precio, presence: true, numericality: { only_integer: true }
  validates :total, presence: true, numericality: { only_integer: true }
  belongs_to :cliente
  belongs_to :product

  has_many :pedidos
end
