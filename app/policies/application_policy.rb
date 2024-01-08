
class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    if user.is_admin?
      true 
    else  
      false
    end
  end

  def create?
    if user.is_admin?
      true 
    else  
      false
    end
  end

  def new?
    create?
  end

  def update?
    if user.is_admin?
      true
    else  
      false
    end
    
  end

  def edit?
    if user.is_admin?
      update?
    else  
      false
    end
   
  end

  def destroy?
    if user.is_admin?
      true 
    else  
      false
    end
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end
end
