class Api::ContactsController < ApplicationController
  def one_contact_action
    @contact = Contact.first
    render 'one_contact_view.json.jbuilder'
  end

  def all_contacts_action
    @contact = Contact.all
    render 'all_contact_view.json.jbuilder'
  end
end
