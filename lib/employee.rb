class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200}

  before_create :generate_password

  private

  def generate_password
    self.password = rand(36**8).to_s(36)
  end

end
