class Category < ApplicationRecord
    has_many :notebooks
    has_many :notes, through: :notebooks
end
