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
    [ "TechSydney - Proposal", "Jordan Lane Creative", 5 ],
    [ "CARAS - Brochure & Stationery", "CARAS", 6 ],
    [ "Hark Attack - Brochure & Collateral", "Hark Attack", 4 ],
    [ "LAIDRE - Brochure", "LAIDRE", 4 ],
    [ "Hark Attack - CC’s Advertisements", "Hark Attack", 3 ],
    [ "AMZ Engineering - Brochure", "AMZ Engineering", 4 ],
    [ "Techfront - Brochure", "Jordan Lane Creative", 4 ],
    [ "Identikit - Book Covers", "Identikit", 3 ],
    [ "AMIC - Conference Collateral", "AMIC", 5 ],
    [ "AMPC - Annual Report", "AMPC", 6 ],
    [ "Corporate ID", "Various", 6 ],
    [ "Photography", "Personal", 17 ],
  ]
end
