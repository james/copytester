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
end
