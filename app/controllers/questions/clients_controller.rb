module Questions
  class ClientsController < ApplicationController
    layout "card"

    def new
    end

    def create      # set current client
      @client = Client.new
      @client.assign_attributes(client_params)
      if @client.save!
        # redirect_to
      end

    end

    private

    def client_params
      params.permit(:first_name, :middle_initial, :last_name)
    end
  end
end