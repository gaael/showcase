class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :codebase
      t.integer :ruby_version
      t.integer :rails_version
      t.integer :front_end_framework
      t.text :description

      t.timestamps
    end
  end
end
