class CruxShareHooks < Spree::ThemeSupport::HookListener						 
	insert_after :cart_form, 'products/fb_share'
 
end