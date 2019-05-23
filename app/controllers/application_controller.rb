class ApplicationController < ActionController::Base

   def index
   end

   private

      def after_sign_in_path_for(resource)
         users_path
      end

      def after_sign_out_path_for(resource)
         root_path
      end

      def after_sign_up_path_for(resource)
         users_path
      end


end
