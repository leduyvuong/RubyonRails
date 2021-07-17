class ApplicationController < ActionController::Base
    include SessionsHelper
    before_action :set_locale

    private
      def set_locale
        I18n.locale = params[:locale] || I18n.default_locale
      end
      def default_url_options
        {locale: I18n.locale}
      end
      def extract_locale
        parsed_locale = params[:locale]
        I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
      end
      def hello
        render html: "hello, world!"
      end
      def logged_in_user
        unless logged_in?
            store_location
            flash[:danger] = "Please log in."
            redirect_to login_url
        end
      end
    
end
