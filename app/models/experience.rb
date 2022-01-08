class Experience < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
    validates :start_year, :end_year, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1900, less_than_or_equal_to: Date.today.year }
    validates :end_year, comparison: { greater_than: start_year }

    has_and_belons_to_many :competences
    has_and_belons_to_many :projects
end
