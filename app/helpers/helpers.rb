class Helpers
  def self.current_user(session_hash) #will only be call in views
    @user = User.find_by(id: session_hash[:user_id])
  end

  def self.is_logged_in?(session_hash)
    !!session_hash[:user_id]
    # if self.current_user(session_hash)
    #   true
    # else
    #   false
    end
  end
end
