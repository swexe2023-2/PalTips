class ApplicationController < ActionController::Base
    helper_method :current_user
    private
        def current_user
            if session[:login_id]
                User.find_by(id: session[:login_id])
            end
        end
end
