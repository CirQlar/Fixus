class PagesController < ApplicationController

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
    render layout: 'maint'
    #Maintenance Page
  end

end
