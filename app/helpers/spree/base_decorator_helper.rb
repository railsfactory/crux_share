module Spree::BaseHelper
#To get the corresponding facebook app key
def get_facebook_key(domain)
	if request.url.include?(APP_CONFIG['separate_url'])
	 fb_share=SaasShare.find_by_domain_url_and_is_custom(get_sub_domain(domain),false)
	else
		fb_share=SaasShare.find_by_domain_url_and_is_custom(get_sub_domain(domain),true)
	end	
	if fb_share
		fb_key=fb_share.key
		return fb_key
	else
		return false
	end
end
end
