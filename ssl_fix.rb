# ssl_fix.rb

require 'net/http'
require 'openssl'

# Patch Net::HTTP to disable SSL verification
# This is a temporary fix for environments where CRL/CA checking fails consistently.
module Net
  class HTTP
    alias original_use_ssl= use_ssl=
    
    def use_ssl=(flag)
      self.original_use_ssl = flag
      if flag
        # Disable peer verification (the CRL/CA check that is failing)
        self.verify_mode = OpenSSL::SSL::VERIFY_NONE
      end
    end
  end
end