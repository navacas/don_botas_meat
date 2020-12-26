class ClientsController < ApplicationController
    before_action :authenticate_user!
      def index
        Client.all
      end
    
     
end
