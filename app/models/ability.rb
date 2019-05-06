
class Ability
  include CanCan::Ability

  def initialize(user)
<<<<<<< HEAD
    # Define abilities for the passed in user here. For example:
=======
>>>>>>> origin/integration
    
      user ||= User.new # guest user (not logged in)
    
      alias_action :create, :read, :update, :destroy, to: :crud 
<<<<<<< HEAD
      #can :crud, Quiz, user_id: user.id
=======
>>>>>>> origin/integration

      #teacher
      can(:crud, Quiz) do |quiz|
        user.role == 1
      end
        
      #logic for not being able to take own quiz that the teacher created
      can(:create, Attempt) do |attempt|
        user != quiz.user_id
      end

      # #admin
      # can(:crud, Quiz) do |quiz|
      #   quiz.user_id == user && user.role == 3 
      #   can :create, Attempt, user_id: user.id && user.role == 3
      # end
        
  end
end


 

  

