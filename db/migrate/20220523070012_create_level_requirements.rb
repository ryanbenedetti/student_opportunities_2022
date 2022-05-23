class CreateLevelRequirements < ActiveRecord::Migration[6.1]
  def change
    create_table :level_requirements do |t|
      t.integer :opportunity_id
      t.integer :level_id

      t.timestamps
    end
  end
end
