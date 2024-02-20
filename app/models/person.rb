class Person < ApplicationRecord
    has_one :person_detail, dependent: :destroy

    validates :email, presence: true
    validates :email, uniqueness: true
    validates :name, presence: true
end
