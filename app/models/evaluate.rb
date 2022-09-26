class Evaluate < ApplicationRecord
    # Evaluate.filter_attributes =[]  (this is used to unfilter the password)
    validates :first_name, :last_name, :email, :password, :phno, presence: true  
    validates :first_name,:last_name, format: { with: /\b([A-Za-z]+)\b/,message: "only allows letters" } 
    validates :phno , length: { minimum: 4}, numericality: true
    validates :email, uniqueness: {case_sensitive: false}
    validates :password ,length:{in: 2..5},allow_nil: true,allow_blank: true 
end
