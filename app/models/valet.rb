class Valet < ApplicationRecord
  belongs_to :trail
  validates :issue, presence: true

  def task_status
    if fixed
      "Task Completed"
    else
      "Needs Attention"
    end
  end

end
