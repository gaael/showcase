class CreateJoinTableCompetenceExperience < ActiveRecord::Migration[7.0]
  def change
    create_join_table :competences, :experiences do |t|
      # t.index [:competence_id, :experience_id]
      # t.index [:experience_id, :competence_id]
    end
  end
end
