class TodoDecanter < Decanter::Base
    strict true
  
    input :title, :string
    input :description, :string
    input :completed, :boolean
end