class Score < ActiveRecord::Base
  belongs_to :goal
  belongs_to :user
  validates_presence_of :goal
  validates_presence_of :reason
  #validates_presence_of :amount
  #validates :amount, numericality: { only_integer: true}
  after_save -> {goal.calculate_scores}

  #TODO: don't allow saving scores to a goal with children.

  #scope :latest, lambda { order("updated_at desc").first}

  #probably should add an actual date field that the user can adjust
  #for now, use updated_at
  def date
    updated_at
  end

  def display_amount
    amount.to_i.to_s + "%"
  end

  def display_date
    date.strftime("%d %h %Y")
  end

end
