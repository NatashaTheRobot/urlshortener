class ChangeShortUrlToShortUrlSlug < ActiveRecord::Migration
  def change
    rename_column :urls, :short_url, :short_url_slug
  end
end
