class FixExperiencesYearsColumnsTypes < ActiveRecord::Migration[7.0]
  def change
    change_column :experiences, :start_year, 'integer USING start_year::integer'
    change_column :experiences, :end_year, 'integer USING end_year::integer'
  end
end
