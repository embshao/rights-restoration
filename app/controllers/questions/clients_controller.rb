module Questions
  class ClientsController < ApplicationController
    layout "card"

    def new
      #analytics track
      @client = Client.new
    end

    def update
      # set current client
      @client.assign_attributes(client_params)
      @client.save!
    end

    private

    def client_params
      params.require(:client).permit(:first_name, :middle_initial, :last_name)
    end
  end
end