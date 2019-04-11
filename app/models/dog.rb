class Dog < ApplicationRecord
    has_many :employees

    def owned_by
        Employee.where(dog_id: self.id).count
    end
end
