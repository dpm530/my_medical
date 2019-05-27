class Patient < ApplicationRecord
   has_one :medication
   has_one :allergy

end
