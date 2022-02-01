class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

        def authenticate_editor!
            redirect_to posts_path unless user_signed_in? && current_user.is_editor?
        end
        def authenticate_admin!
            redirect_to posts_path unless user_signed_in? && current_user.is_admin?
        end
      
        def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
        end
end
