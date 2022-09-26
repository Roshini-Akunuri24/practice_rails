class DemosController < ApplicationController
    def index
        render('show')
    end
    def show
        render('index')
    end
    def form     
    end
end
#render will tell Rails what view it should use (with the same parameters you may have already sent) but redirect_to sends a new request to the browser.