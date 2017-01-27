class Request < ApplicationRecord
  enum status: { outstanding: 0, approved: 1, denied: 2 }
end
