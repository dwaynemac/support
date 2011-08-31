class DrcUser < ActiveRecord::Base
  devise :cas_authenticatable
end
