require_relative 'config/environment'

all_the_medicines = [
  #<Medicine:0x007fb739b1af88 @id=1, @name="penicillin" @group="antibiotic">,
  #<Medicine:0x007fb739b1af88 @id=2, @name="advil" @group="anti-inflammatory">,
  #<Medicine:0x007fb739b1af88 @id=3, @name="benadryl" @group="anti-histamine">
]

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    output = params[:num1].to_i * params[:num2].to_i
    "#{output}"
  end

end

