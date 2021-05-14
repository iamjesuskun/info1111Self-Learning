class SearchController < ApplicationController
    def index
        if params[:search].blank?
            redirect_to(root_path, alert: "Empty Field!") and return
            
        else
            @paramater = params[:search].downcase
            @resutls = User.all.where("lower(name) LIKE :search", search: @parameter)
            
        end
    end

end
