class ApplicationController < ActionController::Base
    
    before_action :authenticate_user!
    before_action :configure_permitted_parametters, if: :devise_controller?
    
    protected
    # Permite nuevos parametros en Devise
    def configure_permitted_parametters
        attributes = [:name]
        devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
        devise_parameter_sanitizer.permit(:account_update, keys: attributes)
    end
end
