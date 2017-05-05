class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable #:validatable,
            #:confirmable, :omniauthable
    include DeviseTokenAuth::Concerns::User

    validates_uniqueness_of :screen_name

    has_many :submissions

end
