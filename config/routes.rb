Rails.application.routes.draw do
  namespace :api do
    # get "/all_contacts_url" => 'contact#all_contacts_action'
    get "/one_contact_url" => 'contacts#one_contact_action'
  end
end
