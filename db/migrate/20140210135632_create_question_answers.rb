class CreateQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :question_answers do |t|
      t.references :question, index: true
      t.string :answer

      t.timestamps
    end
  end
end
