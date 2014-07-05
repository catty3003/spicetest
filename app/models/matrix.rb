class Matrix < ActiveRecord::Base
	belongs_to :matrixname 
  belongs_to :matrixgenu
  belongs_to :matrixspecy
  belongs_to :matrixplantpart 
  belongs_to :matrixstorageform 
  belongs_to :matrixproductform 
end
