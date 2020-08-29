class RegistrationsController < Devise::RegistrationsController

    private

    #overwrite the defaule devise parameters
    #adds name to user params
    def signup_params
        params.require(:user).permit(
            :name,
            :email, 
            :password, 
            :password_confirmation)
    end

    def account_update_params
        params.require(:user).permit(
            :name, 
            :email, 
            :password, 
            :password_confirmation, 
            :current_password)
    end

end