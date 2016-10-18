require( 'pry-byebug' )
require( 'sinatra' )
require( 'sinatra/contrib/all' ) 
require( 'json' )
require_relative( './models/wordformatter' )


get '/' do
 erb(:layout)
end



get '/address/' do 
  content_type(:json)
  @address = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }
  @postcode = Wordformatter.new([:postcode]).upcase
  erb( :result )
end

get '/:all_text/' do
  content_type(:json)
  @new_text = Wordformatter.new( params[:all_text]).camel_case
  erb(:camel_text)
end


