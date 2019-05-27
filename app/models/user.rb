class User < ApplicationRecord
  has_many :missions, :expertises
end
