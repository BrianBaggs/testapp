class Project < ApplicationRecord
    after_initialize :set_defaults
    scope :almost_complete, -> { where('percent_complete > 85.0') }
    scope :still_needs_work, -> { where('percent_complete < 25.0') }

    def set_defaults
        self.percent_complete ||= 0.0
    end    
end
