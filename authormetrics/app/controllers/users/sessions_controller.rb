class Users::SessionsController < Devise::SessionsController
    def after_sign_out_path_for(_resource_or_scope)
        new_user_session_path
    end

    def after_sign_in_path_for(resource_or_scope)
        if resource.is_a?(User)
            banned_user = BannedUser.where(user_id: resource.user_id)[0]
            if banned_user!=nil && banned_user.start_date<=Date.today && banned_user.end_date>=Date.today
                sign_out resource
                flash[:notice] = "This account has been suspended for the following reason: "+banned_user.reason.to_s
                root_path
            else
                stored_location_for(resource_or_scope) || root_path
            end
        end
    end

end
