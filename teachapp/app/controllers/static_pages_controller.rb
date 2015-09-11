class StaticPagesController < ApplicationController
  def index
    @courses = Course.all
  end
end
