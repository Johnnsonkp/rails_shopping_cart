class RegistrationsController < Devise::RegistrationsController

    private

    def sign_up_params #deivise methods
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def account_updated_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
    end
end