class RelationsController < ApplicationController
	
	def index
		#AlexaVerifier.configure do |config|
  			#config.enabled = false # Disables all checks, even though we enable them individually below
		#end
		
		render json: Ralyxa::Skill.handle(request)
	end
end