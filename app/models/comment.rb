class Comment < ActiveRecord::Base
  # ----- ----- ----- ----- fields ----- ----- ----- -----
  attr_accessible :name, :body
  attr_accessible :visible, as: :admin
  validates :body, presence: true

  # ----- ----- ----- ----- assocs ----- ----- ----- -----
  belongs_to :blog

  scope :visible, ->{ where(visible: true) }

  def visible?; visible end
end
