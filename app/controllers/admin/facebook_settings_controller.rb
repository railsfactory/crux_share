#~ class Admin::CaptchaSettingsController < Admin::BaseController
  #~ def update
    #~ Spree::Captcha::Config.set(params[:preferences])

    #~ respond_to do |format|
      #~ format.html {
        #~ redirect_to admin_captcha_settings_path
      #~ }
    #~ end
  #~ end
#~ end

#new

class Admin::FacebookSettingsController < Admin::BaseController
  def edit
    @facebook_settings=SaasShare.find_by_domain_url_and_is_custom(get_sub_domain(current_subdomain),params[:is_custom])
  end
  
  def update
   
  fb_share=SaasShare.find_or_initialize_by_domain_url_and_is_custom(get_sub_domain(current_subdomain),params[:saas_shares][:is_custom])
  fb_share.update_attributes(:key=>params[:saas_shares][:key],:domain_url=>get_sub_domain(current_subdomain),:is_custom=>params[:saas_shares][:is_custom])
  flash[:notice] = I18n.t(:successfully_updated, :resource => (:facebook_settings))
  respond_to do |format|
      format.html {
        redirect_to edit_admin_facebook_settings_path(:is_custom=>params[:saas_shares][:is_custom])
      }
    end
  end
  
end

