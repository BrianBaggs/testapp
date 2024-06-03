class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "My Title Goes Here"
  end

  def home
    @projects = Project.all
  end
end
