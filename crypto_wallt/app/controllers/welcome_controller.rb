class WelcomeController < ApplicationController
  def index
    cookies[:curso] = 'Curso de Ruby on Rails'
  end
end
