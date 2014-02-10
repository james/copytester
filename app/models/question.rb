class Question < ActiveRecord::Base
  belongs_to :copy_sample
  has_many :question_answers
end
