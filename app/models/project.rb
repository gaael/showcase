class Project < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 4}     
    validates :url, :codebase, :rails_version, :ruby_version, :front_end_framework, presence: true
    validates :description, presence:true, length: { in: 50..1000 }

    has_and_belongs_to_many :competences
    has_and_belongs_to_many :experiences
end
