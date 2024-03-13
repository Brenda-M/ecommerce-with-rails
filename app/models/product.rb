class Product < ApplicationRecord

  has_many :line_items

  before_destroy :ensure_not_references_by_any_line_item

  validates :title, :description, :image_url, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true, length: { minimum: 10, message: " must be a minimum of ten characters" }
  validates :image_url, allow_blank: true, format: {
    with: /\.(gif|jpg|png|jpeg|avif|webp)\z/i,
    message: 'must be a URL for GIF, JPG, JEPG, AVIF or PNG image.'
  }

  private

  def ensure_not_references_by_any_line_item
        unless line_items.empty?
          errors.add(:base, 'Line Items present')
          throw :abort
        end
  end
end
