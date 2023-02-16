class ItemFacade
  def self.merchant_items(id)
    ItemService.get_items_by_merchant(id)[:data].map do |item_info|
      Item.new(item_info)
    end
  end
end