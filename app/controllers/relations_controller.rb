class RelationsController < ApplicationController
	#skip_before_action :verify_authenticity_token, only: :index

	def index
		#AlexaVerifier.configure do |config|
  			#config.enabled = false # Disables all checks, even though we enable them individually below
		#end
		AlexaVerifier.valid!(request)

		
		render json: Ralyxa::Skill.handle(request)
	end
end