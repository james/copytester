class ResponseAnswer < ActiveRecord::Base
  belongs_to :response
  belongs_to :question_answer
end
