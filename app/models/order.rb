class Order < ApplicationRecord
    belongs_to :Item_order, :shop, :buyer, :cashier
end
