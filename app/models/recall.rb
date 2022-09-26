class Recall < ApplicationRecord

    before_create :create_before_message #Called before a new object is saved.
    def create_before_message
        puts "Hello! I will run before you create an object!"
    end

#===============================================================================================================================

    before_validation :validate_before_message #Called before a new or existing object’s validations occur.
    def validate_before_message
        puts "Hello! I will run before you validate an object!"
    end

#===============================================================================================================================
    around_create :create_around_message #Called after executing before_create.
    def create_around_message
        puts "Hello! I will run around you create an object!"
    end

#===============================================================================================================================
    # around_create :create_around_message #Called after execution ofbefore_create a new object is saved.
    # def create_around_message
    #     puts "Hello! I will run after you create an object!"
    # end

#===============================================================================================================================

    after_validation :after_validate_message #Called after a new or existing object’s validations occur.
    def after_validate_message
        puts "Hello! I will run after you validate an object!"
    end
#===============================================================================================================================
    before_update :update_before_message 
    def update_before_message
        if self.name.present?
            puts "Hello, before_update! My name is #{name} "
        else
            puts " Can you please introduce yourself"
        end
    end

#===============================================================================================================================
    around_update :update_around_message #it executes after before_update
    def update_around_message
        if self.name.present?
            puts "Hello, around_update! My name is #{name} "
        else
            puts " Can you please introduce yourself"
        end
    end

#===============================================================================================================================
    after_update :update_after_message 
    def update_after_message
        if self.name.present?
            puts "Hello,after_update! My name is #{name}"
        else
            puts " Can you please introduce yourself"
        end
    end
#======================================================================================================
    before_destroy :destroy_before_message
    def destroy_before_message
        puts "The message is destroyed before"
    end
#======================================================================================================
    after_destroy :destroy_after_message
    def destroy_after_message
        puts "The message is destroyed after "
    end
#======================================================================================================
    around_destroy :destroy_around_message
    def destroy_around_message
        puts "The message is destroyed after "
    end
# ====================================================================================================
        after_save :saved_after_message 
        def saved_after_message
            puts "The message is saved after creation of an object"
        end
        
#=======================================================================================================
        before_save  :saved_before_message
        def saved_before_message
            puts "This message prints before creation of an object is saved"
        end
# ====================================================================================================
        around_save :saved_around_message 
        def saved_around_message
            puts "The message displays nil creation of an object"
        end
# ====================================================================================================
        after_commit :committed_after_message 
        def committed_after_message
            puts "The message is committed/rollbacked after creation of an object"
        end
#=======================================================================================================
    after_initialize do |recall|  #first message after new command on console
        puts "You have initialized an object!"
    end

    after_find do |recall|
        puts "You have found an object!"
    end
# ====================================================================================================
    after_touch do |recall|
        puts "You have touched an object"
    end
#=====================================================================================================
end
