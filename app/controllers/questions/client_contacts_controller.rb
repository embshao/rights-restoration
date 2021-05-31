module Questions
  class ClientContactsController < ApplicationController
    layout 'card'

    def edit
      @client = Client.find(params[:id])
    end

    def update
      if Client.find(params[:id]).update(contact_params)
        redirect_to edit_client_contact_path(params[:id])
      else
        flash[:alert] = "Client unsuccessfully updated"
        redirect_to edit_client_contact_path(params[:id])
      end
    end

    private

    def contact_params
      params.require(:client).permit(:phone_number, :email)
    end
  end
end