class Beverage < ApplicationRecord
  scope :beverage_name, -> (name) {Beverage.where(name: name)}
  scope :beverage_category, -> (category) {Beverage.where(category: category)}
end
