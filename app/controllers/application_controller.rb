class ApplicationController < ActionController::Base
    helper_method :current_user
    private
        def current_user
            puts "current_user起動"
            if session[:login_id]
                puts "session[:login_id]は存在する"
                users = User.all
                puts users
                user = User.find_by(id: session[:login_id])
                puts user
                User.find_by(id: session[:login_id])
            end
        end
end
