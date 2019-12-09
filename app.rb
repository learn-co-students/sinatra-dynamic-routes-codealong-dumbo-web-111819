require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  # This is a sample dynamic route.
  get "/multiply/:num1/:num2" do
    @x = params[:num1].to_i
    @y = params[:num2].to_i
    @z = @x * @y
    "#{@z}"
  end

  # Code your final two routes here:

end