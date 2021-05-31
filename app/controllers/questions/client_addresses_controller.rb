module Questions
  class ClientAddressesController < ApplicationController
    layout 'card'
    def edit
      @client = Client.find(params[:id])
    end

    def update
      if Client.find(params[:id]).update(client_address_params)
        redirect_to edit_client_address_path(params[:id])
      else
        flash[:alert] = "Client unsuccessfully updated"
        redirect_to edit_client_address_path(params[:id])
      end
    end

    private

    def client_address_params
      params.require(:client).permit(:id, :street_address, :city, :zip_code, :state_of_residence)
    end
  end
end