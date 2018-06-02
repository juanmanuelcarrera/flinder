module EventsHelper
  API_ENDPOINT = 'https://api.predicthq.com/'
  ACCESS_TOKEN = 'FbxUMsgAbHspWWmAa55NZMcog1BHVQ'


  def get_events
    url = URI.parse(API_ENDPOINT + "v1/events/")
    headers = [['Content-Type', 'application/json'], ['Accept', 'application/json'], ['Authorization', "Bearer #{ACCESS_TOKEN}"]]

    p "WWW" * 10
    p url
    p "WWW" * 10
    conn = Faraday.new
    result = conn.send(:get) do |req|
      req.url url
      headers.each do |h|
        req.headers[h[0]] = h[1]
      end
      # req.body = params.to_json
    end

    json = JSON.parse(result.body, :symbolize_names => true)
    raise "Error. Query failed." if result.status.kind_of? Net::HTTPSuccess
    p json
    res = json[:results]
    create_packages(res)

  end

  def create_packages(results)
    results.each do |r|
      Package.create(name: r[:title], event_code: r[:id])
    end
  end

end