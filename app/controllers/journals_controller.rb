class JournalsController < ApplicationController

    def index
        # byebug
        render json: @current_user.journals
    end 

    def show
        journal = find_journal
        render json: journal, include: :journal_posts, status: :ok
    end

    def create
        journal = @current_user.journals.create!(journal_params)
        render json: journal, status: :created
    end

    def update
        journal = find_journal
        journal.update(journal_params)
        render json: journal, status: :ok
    end

    def destroy
        journal = find_journal
        journal.destroy
        head :no_content
    end


    private

    def find_journal
        Journal.find_by(id: params[:id])
    end

    def journal_params
        params.permit(:title, :description, :user_id)
    end
end
