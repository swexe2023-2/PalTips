class Subject < ApplicationRecord
    belongs_to :grade
    has_many :questions, dependent: :destroy
end
