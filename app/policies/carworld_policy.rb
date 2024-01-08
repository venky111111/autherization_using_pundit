class CarworldPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      if user.is_admin?
        scope.all
      else
        scope.where(:published => true)
      end
    end
    def index?
       user.is_admin?
      
    end
  
    def new?
      user.is_admin?
    end
  
    def create?
      user.is_admin?
    end
  
    def edit?
      user.is_admin?
    end
  
    def update?
      user.is_admin?
    end
  
    def destroy?
       user.is_admin?
    end
  
  end
end
