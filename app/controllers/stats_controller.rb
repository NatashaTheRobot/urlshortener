class StatsController < ApplicationController
  # GET /:slug
  def redirect
    @url = Url.find_by_short_url_slug(params[:slug])
    @url.stats.create
    redirect_to @url.long_url
  end
end
