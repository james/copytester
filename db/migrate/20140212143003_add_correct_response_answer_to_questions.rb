class AddCorrectResponseAnswerToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :correct_question_answer, index: true
  end
end
