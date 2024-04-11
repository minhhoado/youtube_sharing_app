class Users::SessionsController < Devise::SessionsController
  def create
    user = User.find_by(email: params[:user][:email])

    User.create(email: params[:user][:email], password: params[:user][:password]) if user.nil?

    super
  end
end
