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

get '/contact' do
  erb :contact, layout: :layout
end

helpers do

end

def my_work_pages
  [
    [ "TechSydney - Proposal", "Jordan Lane Creative", "Graphic Design", 5 ],
    [ "CARAS - Brochure & Stationery", "CARAS", "Graphic Design", 4 ],
    [ "Hark Attack - Brochure & Collateral", "Hark Attack", "Graphic Design", 4 ],
    [ "LAIDRE - Brochure", "LAIDRE", " Graphic Design & Photography", 4 ],
    [ "Hark Attack - CC’s Advertisements", "Hark Attack", " Graphic Design & Photo Retouching", 3 ],
    [ "AMZ Engineering - Brochure", "AMZ Engineering", "Graphic Design & Photography", 4 ],
    [ "Techfront - Brochure", "Jordan Lane Creative", "Graphic Design", 4 ],
    [ "Identikit - Book Covers", "Identikit", "Photography", 3 ],
    [ "AMIC - Conference Collateral", "AMIC", "Graphic Design", 5 ],
    [ "AMPC - Annual Report", "AMPC", "Graphic Design", 6 ],
    [ "Corporate ID", "Various", "Graphic Design", 6 ],
    [ "Photography", "Personal", "Photography", 16 ],
  ]
end
