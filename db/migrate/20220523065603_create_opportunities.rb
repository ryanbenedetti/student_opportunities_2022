class CreateOpportunities < ActiveRecord::Migration[6.1]
  def change
    create_table :opportunities do |t|
      t.string :award_name
      t.string :subject_area
      t.string :level
      t.date :deadline
      t.text :other_req
      t.string :sponsor
      t.string :amount
      t.string :state
      t.string :min_gpa
      t.string :contact
      t.string :keywords
      t.string :website
      t.string :opportunity_type
      t.string :citizenship
      t.string :website_link_text
      t.boolean :is_published
      t.text :admin_notes
      t.boolean :respect_deadline
      t.date :date_reopens
      t.string :updated_by

      t.timestamps
    end
  end
end
