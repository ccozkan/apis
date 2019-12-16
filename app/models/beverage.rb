class Beverage < ApplicationRecord
  scope :beverage_name, -> (name) {Beverage.where(name: name)}
end
