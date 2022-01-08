class Competence < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
    validates :description, presence: true, length: { in: 50..1000 }

    has_and_belons_to_many :projects
    has_and_belons_to_many :experiences
end
