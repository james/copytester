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
end
