get '/' do
  @check = Purchase.all
  # Look in app/views/index.erb
  # erb :index

  content_type 'json'
  @check.to_json
end

get '/card/:cardholder' do
  @transactions_per_ch = Purchase.where(cardholder: params[:cardholder])
  # erb :card

  content_type 'json'
  @transactions_per_ch.to_json
end

