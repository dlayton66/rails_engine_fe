class MerchantService
  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def self.get_merchants
    parse_json(conn.get("/api/v1/merchants"))
  end

  def self.get_merchant(id)
    parse_json(conn.get("/api/v1/merchants/#{id}"))
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end