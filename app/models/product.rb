class Product < ApplicationRecord
    has_many :pedidos
    has_many :order_histories
end
