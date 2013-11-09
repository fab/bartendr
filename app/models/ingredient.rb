class Ingredient < ActiveRecord::Base
  validates :name, presence: true
  validates :hex_color, presence: true

  has_many :components
  has_many :drinks, through: :components

  def purchase_url
    "https://www.google.com/#q=#{name}&tbm=shop"
  end
end
