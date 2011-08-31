require 'net/http'
require 'openssl'

class Net::HTTP
  alias_method :origConnect, :connect
  def connect
    self.verify_mode = OpenSSL::SSL::VERIFY_NONE
    origConnect
  end
end