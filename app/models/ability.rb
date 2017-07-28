class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    
    if user.admin?
        can :manage, :all
    end

    if user.A?
        can :create, Agent
        can :index, Agent
        can :show, Agent
        can :edit, Agent
        can :update, Agent

        #can :create, Animal
        #can :index, Animal
        #can :show, Animal
        #can :edit, Animal
        #can :update, Animal

        #can :create, Race
        #can :index, Race
        #can :show, Race
        #can :edit, Race
        #can :update, Race

        can :create, Guide
        can :index, Guide
        can :show, Guide
        can :edit, Guide
        can :update, Guide

        can :create, Turn
        can :index, Turn
        can :show, Turn
        can :edit, Turn
        can :update, Turn

        can :create, TurnDetail
        can :index, TurnDetail
        can :show, TurnDetail
        can :edit, TurnDetail
        can :update, TurnDetail

        can :create, Lot
        can :index, Lot
        can :show, Lot
        can :edit, Lot
        can :update, Lot

        can :create, LotDetail
        can :index, LotDetail
        can :show, LotDetail
        can :edit, LotDetail
        can :update, LotDetail

        can :create, Transport
        can :index, Transport
        can :show, Transport
        can :edit, Transport
        can :update, Transport

        can :create, City
        can :index, City
        can :show, City
        can :edit, City
        can :update, City

        can :create, Producer
        can :index, Producer
        can :show, Producer
        can :edit, Producer
        can :update, Producer
    end

    if user.B?
        can :create, Product
        can :index, Product
        can :show, Product
        can :edit, Product
        can :update, Product

        can :create, ProductDetail
        can :index, ProductDetail
        can :show, ProductDetail
        can :edit, ProductDetail
        can :update, ProductDetail
    end
    
    if user.C?
        can :create, SubProduct
        can :index, SubProduct
        can :show, SubProduct
        can :edit, SubProduct
        can :update, Product

        can :create, SubProductDetail
        can :index, SubProductDetail
        can :show, SubProductDetail
        can :edit, SubProductDetail
        can :update, SubProductDetail

        can :index, SubProductType
        can :show, SubProductType
        can :edit, SubProductType
        can :update, SubProductType
    end   


    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
