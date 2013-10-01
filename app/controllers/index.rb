# ============= GET ===============

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/tweeted' do
  erb :tweeted
end

# ============== POST ================

post '/tweet' do
  Twitter.update(params[:tweet])
  erb :tweeted
end