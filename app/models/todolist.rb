class Todolist < ApplicationRecord
    validates :title, presence: true,
                    length: { minimum: 5 }
        validates    :priority, presence: true 
           validates :duedate, presence: true
end
