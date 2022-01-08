class CreateJoinTableCompetenceProject < ActiveRecord::Migration[7.0]
  def change
    create_join_table :competences, :projects do |t|
      # t.index [:competence_id, :project_id]
      # t.index [:project_id, :competence_id]
    end
  end
end
