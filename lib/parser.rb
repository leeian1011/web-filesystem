class Parser
  def self.parse(method)
    # TODO: add regex to filter only for HTTP requests.
    http_method = method[0...method.byteindex(' ')]
    path = method[(http_method.length + 1)...method.byteindex(' ', http_method.length + 1)]
    return { method: http_method, path: path }
  end
end
