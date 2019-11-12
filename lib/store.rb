class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :mens_apparel, :womens_apparel, inclusion: { in: [true, false] }
  validate :carries_stock

  before_destroy :check_store_employee_count #, prepend: true

  private

  def carries_stock
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "Store needs to carry at least one of the men's or women's apparel.")
      errors.add(:womens_apparel, "Store needs to carry at least one of the men's or women's apparel.")
    end
  end

  def check_store_employee_count
    count = employees.count
   
    if count != 0
      throw :abort
    end

  end

end
