module SessionsHelper
    def log_in(user)
        #sets the user
        session[:user_id] = user.id
    end
    
    def current_user
        #returns the current user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    
    def logged_in?
        #return true if user is logged in 
        #mistake made with !current_user.nil? not reffering to the instance variable
        !current_user.nil?
    end
    
    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
    
end
