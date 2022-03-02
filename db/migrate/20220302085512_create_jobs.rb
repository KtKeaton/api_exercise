class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :active
      t.string :live
      t.datetime :first_published_at
      t.text :title
      t.string :location
      t.boolean :internal, :default => false
      t.boolean :external, :default => false
      t.index :job_id
      t.text :content
      t.text :internal_content
      t.index :demographic_question_set_id
      t.string :questions
      t.timestamps
    end
    
    add_index :jobs, :title
  end
end
