class Users::RegistrationsController < Devise::RegistrationsController
  def create
    if User.exists?(email: register_params[:email])
      render json: { error: 'User already exists' }, status: :unprocessable_entity
      return
    end

    @user = User.new(register_params)
    
    if @user.save
      sign_up(resource_name, @user)
      render json: { success: 'User created successfully' }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def register_params
    params.require(:user).permit(
      :email,
      :first_name,
      :last_name,
      :password,
      :password_confirmation,
      :phone_number,
      :main_address,
      :state,
      :city,
      :country
    )
  end
end
