class KittensController < ApplicationController
    def index
        @kittens = Kitten.all
    end

    def show
        @kitten = Kitten.find(params[:id])
    end

    def new
        @kitten = Kitten.new
    end

    def edit
        @kitten = Kitten.find(params[:id])
    end

    def create 

    end

    def destroy

    end

    private

    def kitten_params
        params.require(:kitten).permit(:name, :age, :cuteness, :softness)
    end
end
