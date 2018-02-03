class PagesController < ApplicationController
  before_action :remove_header_and_footer, only: [:index, :maint]

  def index
    #Load Home page
  end

  def about
    #Load about page
  end

  def contact
    #Load Contact Us page
  end

  def terms
    #Load Terms of Service
  end

  def maint
    #Maintenance Page
  end

end
