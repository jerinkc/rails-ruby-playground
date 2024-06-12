class Person < ApplicationRecord
  belongs_to :parent, class_name: 'Person', optional: true
  has_many :children, class_name: 'Person', foreign_key: 'parent_id'
  has_many :grandchildren, through: :children, source: :children
end
