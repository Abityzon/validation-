class Person < ApplicationRecord
    validates :name, presence: true, length: { maximum: 255 }
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i },
                      uniqueness: true
    validates :age, numericality: { only_integer: true, greater_than: 0 }
    validates :gender, inclusion: { in: ['male', 'female'], message: "must be 'male' or 'female'" }
    validates :favorite_color, exclusion: { in: %w(red blue green), message: "can't be red, blue, or green" }
  end
  