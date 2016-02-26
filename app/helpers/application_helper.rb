module ApplicationHelper

def markdown(text)
	 markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, 
		no_intra_emphasis: true, 
	    fenced_code_blocks: true,   
	    disable_indented_code_blocks: true,
	    hard_wrap: true,
	    autolink: true,
	    filter_html: true)
	markdown.render(text).html_safe
end



end
