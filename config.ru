require 'dashing'

configure do
  

  helpers do
    JENKINS_URI = URI.parse("http://jenkins.cryptocompare.lan/")

	JENKINS_AUTH = {
  	'name' => 'hatim',
  	'password' => '950QN#9Pi4Cs'
	}
  end
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

run Sinatra::Application
