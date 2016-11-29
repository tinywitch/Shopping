class Product < ApplicationRecord

  belongs_to :category
  has_many :orders

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :size, presence: true

  def self.search(search)
    if search
      where("name LIKE ?", "%#{search}%")
    else
      all
    end
  end
end
