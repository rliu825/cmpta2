class RaydbController < ApplicationController
    # GET /raydb/index
    # GET /raydb
    def index
        @raydb = Raydb.all
    end
    # GET /raydb/show/:id
    def show
        @raydb = Raydb.find(params[:id])
        @page_title = @raydb.name
    end
    
    # GET /raydb/new
    def new
        @raydb = Raydb.new
    end
    
    #GET /raydb/edit/:id
    def edit
        @raydb =Raydb.find(params[:id])
    end
    #POST /raydb/update/:id
    def update
        @raydb = Raydb.find (params[:id])
        
        if @raydb.update(raydb_params)
            flash[:notice] = "Successfully updated"
            redirect_to :action => :show, :id => @raydb
        else
            render :action => :edit
        end
    end
    # POST /raydb/create
    def create
       @raydb = Raydb.new(raydb_params)
       
        if @raydb.save
            flash[:notice] = "Successfully Added"
            redirect_to :action => :index  #Tell browser to change to index
        else
            render :action => :new
        end
    end
    
    #GET /raydb/destroy/ :id
    def destroy
        @raydb =Raydb.find (params[:id])
        @raydb.destroy
        flash[:alert] = "Successfully deleted"
        redirect_to :action => :index
    end 
    private
    def raydb_params
        params.require(:raydb).permit(:name, :weight, :height, :color, :gpa, :age, :gender)
    end    
end