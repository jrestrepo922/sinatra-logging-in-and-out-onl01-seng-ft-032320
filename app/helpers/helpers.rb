class Helpers
  def self.current_user(session_hash) #will only be call in views
    binding.pry
    @user = User.find_by(user_id: sessionn_hash[:user_id])
  end

  def self.is_logged_in?(session_hash)
    if self.current_user(session_hash)
      true
    else
      false
    end
  end
end
