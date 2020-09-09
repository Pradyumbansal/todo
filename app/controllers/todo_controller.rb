class TodoController < ApplicationController
    def index
        @todo = Todolist.all
    end
  
    def new
        @todo = Todolist.new
    end
    def show 
        @todo = Todolist.find(params[:id])
    end
    
    def create
        @todo = Todolist.new(todo_params)
    
        if @todo.save
            redirect_to todo_path(@todo)
        else render 'new'
        end
    end
    def edit
        @todo = Todolist.find(params[:id])
    end
    def update
        @todo = Todolist.find(params[:id])
       
        if @todo.update(todo_params)
          redirect_to todo_path(@todo)
        else
          render 'edit'
        end
    end
    def destroy
        @todo = Todolist.find(params[:id])
        @todo.destroy
       
        redirect_to todo_index_path
      end
    private
        def todo_params
        params.require(:todo).permit(:title, :priority, :duedate)
        end
    
     
end
