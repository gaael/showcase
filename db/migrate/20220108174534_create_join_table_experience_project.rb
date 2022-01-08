class CreateJoinTableExperienceProject < ActiveRecord::Migration[7.0]
  def change
    create_join_table :experiences, :projects do |t|
      # t.index [:experience_id, :project_id]
      # t.index [:project_id, :experience_id]
    end
  end
end
