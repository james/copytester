class QuestionAnswer < ActiveRecord::Base
  belongs_to :question
  has_many :response_answers
end
