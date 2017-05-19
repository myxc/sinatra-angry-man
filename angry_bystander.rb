require 'sinatra'

get '/' do
  erb :talk_form
end

post '/talk_form' do
  text_str = params[:text_string]
  text_str.upcase
  erb :response, locals: {response_text: text_str}
end
