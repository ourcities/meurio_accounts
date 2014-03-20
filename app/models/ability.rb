class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can(:manage, User) {|u| user.id == u.id}
      if user.admin?
        can(:manage, User)
      end
    end

    if request && request.params[:format] == "json"
      if request.params[:token] == ENV["API_TOKEN"]
        can :create, User
      else
        cannot :create, User
      end
    end
  end
end
