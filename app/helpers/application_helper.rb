module ApplicationHelper

# def markdown(text)
# 	#  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, 
# 	# 	no_intra_emphasis: true, 
# 	#     fenced_code_blocks: true,   
# 	#     disable_indented_code_blocks: true)
# 	# return markdown.render(text).html_safe

# end

  def markdown(text)
    options = {
      filter_html:     true,
      hard_wrap:       true, 
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true, 
      fenced_code_blocks: true
    }

    extensions = {
      autolink:           true,
      superscript:        true,
      disable_indented_code_blocks: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end



end
