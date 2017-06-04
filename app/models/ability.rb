class Ability
  include CanCan::Ability

  def initialize(user)

    if user.present?  
      if user.role.name == 'admin'  
        can :manage, Cnic
        can :manage, License 
        can :manage, Passport
        can :manage, Appointment 
        can :manage, Pappointment
        can :manage, Lappointment
      elsif user.role.name == 'user'  
        can :create , Cnic 
        can :create, License
        can :create, Passport
        can :create, Appointment 
        can :create, Pappointment
        can :create, Lappointment
        can :read, Cnic
        can :read, Passport
        can :read, License
     end  
   else  
      
  end
end
end
