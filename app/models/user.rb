class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :nom, :prenom
  validates_uniqueness_of :num_licence, allow_blank: true
  enum role: %i[admin dirigeant joueur]
  after_initialize :set_default_role

  private

  def set_default_role
    self.role ||= :joueur
  end
end
