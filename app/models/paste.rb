class Paste < ActiveRecord::Base

validates :body, presence: true
before_save :format_body, :create_slug


private

def self.format_text(text)
  @markdown ||= Redcarpet::Markdown.new(HTMLwithPygments, :fenced_code_blocks => true, :tables => true, :autolink => true, :superscript => true, :strikethrough => true, :highlight => true, :no_intra_emphasis => true, :with_toc_data => true, :safe_links_only => true, :no_styles => true)

  @markdown.render(text)
end

def format_body
  self.formatted_body = self.class.format_text(self.body) 
end

def create_slug

end

end

class HTMLwithPygments < Redcarpet::Render::HTML
  def block_code(code, language)
    Pygments.highlight(code, :lexer => language)
  end
end