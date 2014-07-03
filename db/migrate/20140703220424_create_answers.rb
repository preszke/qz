class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question, index: true
      t.boolean :correct
      t.text :answer

      t.timestamps
    end
  end
end
