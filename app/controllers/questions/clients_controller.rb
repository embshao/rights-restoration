module Questions
  class ClientsController < ApplicationController
    layout "card"

    def new
    end

    def create
      @client = Client.new
      @client.assign_attributes(client_params)
      if @client.save!
        redirect_to edit_client_address_path(id: @client.id)
      else
        flash[:alert] = "Client unsuccessful update"
        render :new
      end
    end

    private

    def client_params
      params.permit(:first_name, :middle_initial, :last_name)
    end
  end
end