class Order < ApplicationRecord
    belongs_to :Item_order, Shop, buyer, cashier
end
