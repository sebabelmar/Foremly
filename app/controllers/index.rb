get '/' do

  # Look in app/views/index.erb
  erb :index
end

get '/card/:cardholder' do
  @transactions_per_ch = Purchase.where(cardholder: params[:cardholder])

  content_type 'json'
  @transactions_per_ch.to_json
end
# ["425907XXXXXX6382", "425907XXXXXX0417", "425907XXXXXX0429", "425907XXXXXX6457", "425907XXXXXX2783", "425907XXXXXX0403", "425907XXXXXX0292"]

