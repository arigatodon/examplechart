class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :leads
  before_save :default_role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

          enum role: [:admin, :client, :guest]

        def default_role
    		self.role ||= 1 
 		end
end
