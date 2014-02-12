class Question < ActiveRecord::Base
  belongs_to :copy_test
  has_many :question_answers
  has_one :correct_question_answer, :class_name => 'QuestionAnswer'
end
