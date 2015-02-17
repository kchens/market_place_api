class ApiConstraints

  def initialize(options)
    @version = options[:version]
    @default = options[:defaults]
  end

  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.marketplace.v#{@version}")
  end

end