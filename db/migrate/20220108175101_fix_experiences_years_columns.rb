class FixExperiencesYearsColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :experiences, :start_date, :start_year
    rename_column :experiences, :end_date, :end_year
  end
end
