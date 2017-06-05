class LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index

  end

  def create
    link = Link.new(link_url)
    binding.pry
  end

  private

  def link_url
    params.permit(:url)
  end
end
