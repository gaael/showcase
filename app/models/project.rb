class Project < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 4}     
    validates :url, :codebase, :rails_version, :ruby_version, :front_end_framework, presence: true
    validates :description, presence:true, length: { in: 50..1000 }

    has_and_belongs_to_many :competences
    has_and_belongs_to_many :experiences

    enum rails_version: { seven: 0, six: 1, five: 2 }
    enum ruby_version: { threeDotOne: 0, threeDotZero: 1, twoDotSeven: 2 }
    enum front_end_framework: {vanilla: 0, bootstrap: 1, bulma: 2, postcss: 3, tailwind: 4, dart_sass: 5 }
end
