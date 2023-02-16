class MerchantFacade
  def self.merchants
    Merchant.new(MerchantService.get_merchants)
  end

  def self.merchant(id)
    Merchant.new(MerchantService.get_merchant(id))
  end
end