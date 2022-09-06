class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    # def facebook
    # # You need to implement the method below in your model (e.g. app/models/user.rb)
    # @user = User.from_omniauth(request.env["omniauth.auth"])
    # if @user.persisted?
    # sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
    # set_flash_message(:notice, :success, :kind => "Facebook") if
    # is_navigational_format?
    # else
    #     session["devise.facebook_data"] = request.env["omniauth.auth"]
    #     redirect_to new_user_registration_url
    # end
    # end
    
    # def failure
    # redirect_to root_path
    # end

    # def facebook
    #     @user = User.from_omniauth(request.env["omniauth.auth"])
    #     if @user.persisted?
    #       sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
    #       set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    #     else
    #       session["devise.facebook_data"] = request.env["omniauth.auth"].except(:extra) # Removing extra as it can overflow some session stores
    #       redirect_to new_user_registration_url
    #     end
    # end

    def google_oauth2
      @user = User.from_omniauth(auth)

      if @user.persisted?
        sign_out_all_scopes
        flash[:success] = t 'devise.omniauth_callbacks.success', kind: 'Google'
        sign_in_and_redirect @user, event: :authentication
      else
        # flash[:alert] =
        #   t 'devise.omniauth_callbacks.failure', kind: 'Google', reason: "#{auth.info.email} is not authorized."
        # redirect_to new_user_session_path
        session['devise.google_data'] = request.env['omniauth.auth'].except('extra')
        redirect_to new_user_registration_url, alert: @user.errors.full_messages.join('\n')
      end
    end

    def failure
      #     # redirect_to root_path
        redirect_to info_path # per non intasare il terminale con messaggi esecuzione query homepage e vedere messaggio di errore
    end

    def failure
<<<<<<< HEAD
      #     # redirect_to root_path
        redirect_to info_path # per non intasare il terminale con messaggi esecuzione query homepage e vedere messaggio di errore
    end

=======
    #     # redirect_to root_path
      redirect_to info_path # per non intasare il terminale con messaggi esecuzione query homepage e vedere messaggio di errore
    end
    
>>>>>>> 3c1aae6b318aa101da11eb98cfa7dea41b634b12
    private

    def auth
      @auth ||= request.env['omniauth.auth']
    end
end