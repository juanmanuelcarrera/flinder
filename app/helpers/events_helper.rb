module EventsHelper
  API_ENDPOINT = 'https://api.predicthq.com/'
  ACCESS_TOKEN = 'FbxUMsgAbHspWWmAa55NZMcog1BHVQ'

  def base_query
    url = URI.parse(API_ENDPOINT + "v1/events")
    headers = [['Content-Type', 'application/json'], ['Accept', 'application/json'], ['Authorization', "Bearer #{ACCESS_TOKEN}"]]

    p "WWW" * 10
    p url
    p "WWW" * 10
    conn = Faraday.new
    result = conn.send(method) do |req|
      req.url url
      headers.each do |h|
        req.headers[h[0]] = h[1]
      end
      req.body = params.to_json
    end

    raise "Error. Query failed." if result.status.kind_of? Net::HTTPSuccess


  end

end