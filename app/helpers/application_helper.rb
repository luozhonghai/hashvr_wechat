require 'net/http'
require 'uri'
require 'json'

module ApplicationHelper

  REQUEST_URI = URI('http://www.tuling123.com/openapi/api')
  REQUEST_KEY = '4094c8e5665e44b921107a4a1362266c'

  def process_info_tuling(info, user_id = '')
    req = Net::HTTP::Post.new(REQUEST_URI)
    req_hash = {key: REQUEST_KEY, info: info, userid: user_id}
    req.set_form_data(req_hash)
    res = Net::HTTP.start(REQUEST_URI.hostname, REQUEST_URI.port) do |http|
      http.request(req)
    end
    resp_hash = JSON.parse(res.body, symbolize_names: true)
    return resp_hash
  end
end

