class Helpers
    def self.current_user(session)
        @user = User.find(session[:user_id])
    end

    def self.is_logged_in?(session)
        # session.has_key?(:user_id) ? true : false
        !!session[:user_id]
        #changed to use the double bang operater to make this a little prettier
    end
end