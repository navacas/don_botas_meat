class ClientsController < ApplicationController
      def index
        Client.all
      end
    
     
end
