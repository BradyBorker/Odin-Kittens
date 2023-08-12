class Kitten < ApplicationRecord
    validates :name, :age, :cuteness, :softness, presence: true
    validates :cuteness, :softness, inclusion: { in: (1..10) }
end
