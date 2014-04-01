class User < ActiveRecord::Base
  after_create :generate_tenant

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def generate_tenant
    Apartment::Database.create(self.username)
    switch_tenant
  end

  def switch_tenant
    Apartment::Database.switch(self.username)
  end

  def self.current
    Thread.current[:user]
  end
  def self.current=(user)
    Thread.current[:user] = user
  end
end
