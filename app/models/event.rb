class Event < ApplicationRecord
    belongs_to :day
    belongs_to :user
    belongs_to :calendar
end
