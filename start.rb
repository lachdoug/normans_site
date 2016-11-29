require 'sinatra'

get '/' do
  IndexHtml ||= index_html
end

def index_html
  erb :index, layout: :layout
end

get '/portfolio' do
  set_portfolio_content params[:page]
  erb :portfolio, layout: :layout
end

get '/about' do
  erb :about, layout: :layout
end

get '/contact' do
  erb :contact, layout: :layout
end

helpers do

end

def set_portfolio_content(page)
  case page.to_sym
  when :photography
    @page_title = "Photograpghy"
    @image = "dog1.jpg"
  when :cool
    @page_title = "Cool stuff"
    @image = "dog2.jpg"
  when :wow
    @page_title = "This is wow"
    @image = "dog3.jpg"
  when :look
    @page_title = "Look here"
    @image = "dog4.jpg"
  else
    @page_title = "Ooops"
    @image = "dog1.jpg"
  end
end
