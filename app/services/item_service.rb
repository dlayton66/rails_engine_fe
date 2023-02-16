class ItemService
  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def self.get_items_by_merchant(id)
    parse_json(conn.get("/api/v1/merchants/#{id}/items"))
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end