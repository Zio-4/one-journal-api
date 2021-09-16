class JournalsController < ApplicationController

    def index
        journals = Journal.all
        render json: journals
    end 

    def show
        journal = find_journal
        render json: journal, include: :journal_posts
    end


    private

    def find_journal
        Journal.find_by(id: params[:id])
    end
end
