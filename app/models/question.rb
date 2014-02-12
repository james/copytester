class Question < ActiveRecord::Base
  belongs_to :copy_test
  has_many :question_answers
end
