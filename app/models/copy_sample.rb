class CopySample < ActiveRecord::Base
	belongs_to :copy_test
  has_many :responses

  def copy_markup
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true)
    markdown.render(self.copy).html_safe
  end

  def questions
    copy_test.questions
  end
  def average_time_taken
    responses.average(:time_taken)
  end
  def average_trust_rating
    responses.average(:trust_rating)
  end
  def correctly_answered_percentage_for_question(question)
    if responses.count > 0
      correct_answer = question.correct_question_answer
      correct_responses_count = responses.includes(:response_answers).references(:response_answers).where('response_answers.question_answer_id = ?', correct_answer).count
      if correct_responses_count > 0
        (correct_responses_count.to_f / responses.count.to_f) * 100
      else
        0
      end
    else
      nil
    end
  end
end
