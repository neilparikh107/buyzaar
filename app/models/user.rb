class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_many :items

  after_create :assign_role

    def assign_role
      if user_type == 'Buyer'
        add_role :buyer
      elsif user_type == 'Seller'
        add_role :seller
      elsif user_type == 'Admin'
        add_role :admin
      end
    end

end
