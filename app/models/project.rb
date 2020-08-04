class Project < ApplicationRecord
    validates :name, :state, :description, presence: true

    enum state: ["Propuesta", "En progreso", "Terminado"]
end
