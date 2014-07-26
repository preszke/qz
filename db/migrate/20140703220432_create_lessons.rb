class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :user, index: true
      t.text :lesson_title
      t.string :question_text
      t.boolean :isPrivate

      t.timestamps
    end
  end
end
