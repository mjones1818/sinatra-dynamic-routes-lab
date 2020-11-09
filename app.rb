require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do

    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase]}" * params[:number].to_i

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    result = []
    params.each do |key, value|
      result << value
    end
    "#{result.join(" ")}."
  end

  get '/:operation/:number1/:number2' do 
    case params[:operation]
    when "add"
      return "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
      return "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
      return "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
      return "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end