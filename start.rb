require 'sinatra'

get '/' do
  IndexHtml ||= index_html
end

def index_html
  erb :index, layout: :layout
end

get '/my_work' do
  @page = params[:page].to_i
  @page_detail = my_work_pages[ @page - 1 ]
  erb :my_work, layout: :layout
end

get '/about' do
  erb :about, layout: :layout
end

get '/contact' do
  erb :contact, layout: :layout
end

helpers do

end

def my_work_pages
  [
    [ "TechSydney - Proposal", "Jordan Lane Creative", 5, 1 ],
    [ "CARAS - Brochure & Stationery", "CARAS", 6, 1 ],
    [ "Hark Attack - Brochure & Collateral", "Hark Attack", 4, 1 ],
    [ "LAIDRE - Brochure", "LAIDRE", 4, 1 ],
    [ "Hark Attack - CC’s Advertisements", "Hark Attack", 3, 1 ],
    [ "AMZ Engineering - Brochure", "AMZ Engineering", 4, 1 ],
    [ "Techfront - Brochure", "Jordan Lane Creative", 4, 1 ],
    [ "Identikit - Book Covers", "Identikit", 3, 1 ],
    [ "AMIC - Conference Collateral", "AMIC", 5, 1 ],
    [ "AMPC - Annual Report", "AMPC", 6, 1 ],
    [ "Corporate ID", "Various", 6, 1 ],
    [ "Photography", "Personal", 12, 1 ],
  ]
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
