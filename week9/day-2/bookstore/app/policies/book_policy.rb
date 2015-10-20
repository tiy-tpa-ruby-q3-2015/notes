class BookPolicy < ApplicationPolicy
  def new?
    user.admin? || user.email == "gavin@gstark.com"
  end

  def create?
    user.admin? || user.email == "gavin@gstark.com"
  end

  def destroy?
    user.admin?
  end
end
