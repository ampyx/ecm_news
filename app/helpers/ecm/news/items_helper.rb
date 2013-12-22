module Ecm::News::ItemsHelper
  def ecm_news_item_path item
    "/news/#{item.slug}"
  end
end

