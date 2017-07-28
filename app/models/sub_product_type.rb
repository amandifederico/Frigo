class SubProductType < ApplicationRecord
  def to_s
    description
  end
end
