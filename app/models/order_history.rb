class OrderHistory < ApplicationRecord
  belongs_to :client
  belongs_to :product
  belongs_to :pedido
end
