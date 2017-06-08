class Api::V1::LinksController < ApplicationController

  def index
    links = Link.best_ten
    render json: links
  end
end
