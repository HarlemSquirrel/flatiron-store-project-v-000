module ApplicationHelper
  def current_cart
    return nil if current_user.nil?
    current_user.current_cart
  end

  #def current_user
  #  binding.pry
  #  return nil if session[:user_id].nil?
  #  User.find(session[:user_id])
  #end
end
