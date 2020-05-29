class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: :true
  validates :country, presence: :true

  before_save(:titleize_album)

  private
    def titleize_album
      self.name = self.name.titleize
    end
end 