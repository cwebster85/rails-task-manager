class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

# # title, as a string
# details, as a text
# completed, as a boolean (default: false) 