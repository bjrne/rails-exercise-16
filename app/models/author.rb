class Author < ActiveRecord::Base

  def name
    if first_name != nil && last_name != nil
      first_name + ' ' + last_name
    end
  end

  has_and_belongs_to_many :papers

  validates :first_name, presence: true
  validates :last_name, presence: true

end
