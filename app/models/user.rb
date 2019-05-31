class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :expertises, dependent: :destroy
  has_many :expert_missions, through: :expertises, source: :missions
  has_many :missions, dependent: :destroy
end
