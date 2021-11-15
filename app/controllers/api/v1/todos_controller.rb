class Api::V1::TodosController < ApplicationController
    include RailsUtil::JsonHelper

    def index 
        todos = Todo.in_order_by_creation
        json_with todos
    end

end
