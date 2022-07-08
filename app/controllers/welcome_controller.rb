class WelcomeController < ApplicationController
    before_action :require_logged_in
    def home
    end

    def index
      @products = Product.all
    end
  end