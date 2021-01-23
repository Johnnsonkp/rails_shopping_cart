class Item < ApplicationRecord
    mount_uploader :image, ImageUploader
    serialize :image, JSON # If you use SQLite, add this line
    belongs_to :user, optional: true

    validates :title, :brand, :price, :size, :color, :condition, presence: true
    validates :description, length: {maximum: 1000, too_long: "%{count} characters is the maximum aloud. "}
    validates :title, length: {maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
    validates :price, numericality: {only_integer: true}, length: { maximum: 7}

    BRAND = %w{ Other Nike Addidas TommyHilfiger Puma Zara }
    CONDITION = %w{ Other New Used}
    SIZE = %w{Other Small Meduim Large Xlarge}
    COLOR = %w{Other Black White Green Red Blue Pink Orange Yellow Purple}

end
