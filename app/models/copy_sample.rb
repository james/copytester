class CopySample < ActiveRecord::Base
	belongs_to :copy_test
  has_many :questions

  def copy_markup
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true)
    markdown.render(self.copy)
  end
end
