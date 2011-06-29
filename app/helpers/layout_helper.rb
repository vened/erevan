# encoding: utf-8
# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
#   helper :layout
module LayoutHelper
	
  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end

	def footer
		"<div id='footer'>
			<div class='copy'>&copy; 2011 &laquo;<a href='/'>Ереван</a>&raquo;</div>
			<div class='dev'>
				<a href='http://www.status-club.ru/' target='_blank'><img width='91' height='27' src='/img/status.png' alt='Status Club' /></a>
				Сделано в Бюро рекламы <br/><a href='http://www.status-club.ru/' target='_blank'>Статус Клуб</a>
			</div>
			<div class='adr'>г. Пенза ул.Кирова, 42</div>
		</div>"
	end

	def slider
		"<div id='slider'>
				<div><img src='/img/bnn_main.jpg' class='act' /></div>
		</div>"
	end

end
