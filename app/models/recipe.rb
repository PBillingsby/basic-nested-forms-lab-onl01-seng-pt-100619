class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(attributes)
    byebug
    attributes.each do |i, attribute|
      self.ingredients.build(attribute)
    end
  end
end
