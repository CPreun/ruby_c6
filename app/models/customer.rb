class Customer < ApplicationRecord
    validates :full_name, presence: true, uniqueness: true

    has_one_attached :image

    def self.ransackable_attributes(auth_object = nil)
        %w(full_name phone_number email_address notes created_at updated_at)
    end

    def self.ransackable_associations(auth_object = nil)
        []
    end
end
