class Helpers
  def self.current_user(session_hash) #will only be call in views
    @user = User.find_by(user_id: sessionn_hash[:user_id])
  end

  def self.is_logged_in?

  end
end
