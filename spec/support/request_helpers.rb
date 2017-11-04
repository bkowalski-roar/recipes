module Requests
  module JsonHelpers
    def json
      @parsed_json ||= JSON.parse(response.body)
    end

    def clear_json
      @parsed_json = nil
    end
  end
end