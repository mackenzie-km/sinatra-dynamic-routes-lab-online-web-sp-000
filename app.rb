require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].to_s
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    @number.times.collect {@phrase}
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]+"."]
      words.collect do |word|
        word + " "
      end
  end

  get '/say/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @number.times.collect {@phrase}
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation].to_s
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation
      when "divide"
        @operation = "/"
      when "multiply"
        @operation = "*"
      when "subtract"
        @operation = "-"
      when "add"
        @operation = "+"
    end
    "#{@number1 + @operation + @number2}"
  end

end
