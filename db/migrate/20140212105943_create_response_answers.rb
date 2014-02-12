class CreateResponseAnswers < ActiveRecord::Migration
  def change
    create_table :response_answers do |t|
      t.references :response, index: true
      t.references :question_answer, index: true

      t.timestamps
    end
  end
end
