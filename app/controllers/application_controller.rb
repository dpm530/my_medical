class ApplicationController < ActionController::Base

   before_action :configure_permitted_parameters, if: :devise_controller?

   def index
   end

   private

      def after_sign_in_path_for(resource)
         if resource.class == User
            users_path
         elsif resource.class == AdminUser
            admin_root_path
         end
      end

      def after_sign_out_path_for(resource)
         root_path
      end

      def after_sign_up_path_for(resource)
         users_path
      end




   protected

      def configure_permitted_parameters
         devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :password, :password_confirmation])
         devise_parameter_sanitizer.permit(:account_update, keys: [:email, :first_name, :last_name, :password, :password_confirmation, :current_password])
      end


end
