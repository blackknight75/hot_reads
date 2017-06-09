class LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @links = Link.order('view_count DESC').limit(10)
  end

  def create
    link = Link.find_or_create_by(link_url)
    link.view_count += 1
    link.save
    redirect_to root_path
  end

  private

  def link_url
    params.permit(:url)
  end
end
