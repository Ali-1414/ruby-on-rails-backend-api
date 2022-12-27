class Shop < ApplicationRecord
    has_many :cashier, order, Invoice, items
    has_one :Shop_owner
end
