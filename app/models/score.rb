class Score < ActiveRecord::Base
  belongs_to :goal
  validates_presence_of :goal
  validates :amount, numericality: { only_integer: true}

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