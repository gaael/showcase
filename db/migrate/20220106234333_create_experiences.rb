class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.text :description

      t.timestamps
    end
  end
end
