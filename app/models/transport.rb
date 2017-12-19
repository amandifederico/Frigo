class Transport < ApplicationRecord
  def to_s
    model+" "+plate
  end
end
