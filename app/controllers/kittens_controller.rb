class KittensController < ApplicationController
    def index
        @kittens = Kitten.all

        respond_to do |format|
            format.html
            format.json { render json: @kittens }
        end
    end

    def show
        @kitten = Kitten.find(params[:id])

        respond_to do |format|
            format.html
            format.json { render json: @kitten }
        end
    end

    def new
        @kitten = Kitten.new
    end

    def edit
        @kitten = Kitten.find(params[:id])
    end

    def create
        @kitten = Kitten.new(kitten_params)
    
        if @kitten.save
            flash[:notice] = 'Meow! Kitten has been created!'
            redirect_to kitten_path(@kitten)
        else
            flash.now[:alert] = 'Meow! Unable to create kitten!'
            render :new, status: :unprocessable_entity
        end
    end

    def update
        @kitten = Kitten.find(params[:id])
        
        if @kitten.update(kitten_params)
            flash[:notice] = 'Meow! Kitten has been updated!'
            redirect_to kitten_path(@kitten)
        else
            flash.now[:alert] = 'Meow! Unable to update kitten!'
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @kitten = Kitten.find(params[:id])
        @kitten.destroy

        flash[:notice] = 'Meow! Kitten has been destroyed'
        redirect_to root_path
    end

    private

    def kitten_params
        params.require(:kitten).permit(:name, :age, :cuteness, :softness)
    end
end
