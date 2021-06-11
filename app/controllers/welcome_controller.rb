class WelcomeController < ApplicationController
    def index
        @props = {
            component_name: 'home'
        }
    end
end
