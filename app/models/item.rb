class Item < ApplicationRecord
  belongs_to :todo_list
  validates :name, presence: true, uniqueness: true
  belongs_to :todo_list
end
