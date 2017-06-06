class LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @links = Link.all
  end

  def create
    link = Link.find_or_create_by(link_url)
    link.view_count += 1
    link.save
  end

  private

  def link_url
    params.permit(:url)
  end
end
