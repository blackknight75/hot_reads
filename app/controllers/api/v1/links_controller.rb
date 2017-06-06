class Api::V1::LinksController < ApplicationController

  def index
    links = Link.order(:view_count).reverse
    render json: links
  end
end
