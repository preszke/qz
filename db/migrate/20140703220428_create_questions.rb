class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :lesson, index: true
      t.text :question
      t.integer :question_type

      t.timestamps
    end
  end
end
