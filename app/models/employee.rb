class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :confirmable
  belongs_to :employer
  belongs_to :role
  validates :first_name, :last_name,:date_of_join,:role_id, :employer_id, presence: true
  validates :phone , presence: true, uniqueness: true

  def full_name
    self.first_name + " " + self.last_name
  end
end
