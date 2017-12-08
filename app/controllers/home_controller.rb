class HomeController < ApplicationController
  before_action :authenticate_employee!
  def index
    @employees = current_employee.employer.employees
  end
end
