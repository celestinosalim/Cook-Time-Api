class HomeController < ApplicationController
    before_action :authenticate_user,  only: [:auth]

    # Public method
    def index
      render json: { service: 'auth-api', status: 200 }
    end

    # Authorized only method
    def auth
      if current_user
      render json: { status: 200, msg: "You are currently Logged-in as #{current_user.username}" }
      else
        render json: {status: 404 msg: "Invalid User"}
      end
    end

end
