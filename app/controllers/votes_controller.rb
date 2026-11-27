class VotesController < ApplicationController
  def index
    @votes_count = Vote.group(:choice).count
    @total_votes = Vote.count
  end

  def create
    @vote = Vote.new(vote_params)

    if @vote.save
      redirect_to votes_path, notice: "Thank you for your vote! ❤️"
    else
      redirect_to votes_path, alert: "Something went wrong. Please try again."
    end
  end
private

  def vote_params
    params.require(:vote).permit(:choice)
  end
end

