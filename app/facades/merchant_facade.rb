class MerchantFacade
  def self.merchants
    MerchantService.get_merchants[:data].map do |merchant_info|
      Merchant.new(merchant_info)
    end
  end

  def self.merchant(id)
    Merchant.new(MerchantService.get_merchant(id)[:data])
  end
end