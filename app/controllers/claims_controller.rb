class ClaimsController < ApplicationController
  before_action :find_claim, only: :show

  def new
    @claim = Claim.new(accident_date: Time.zone.today)
  end

  def create
    @claim = Claim.in_progress.new(claim_params)

    if ClaimCreator.new(@claim).create
      flash[:success] = 'Claim has been created'
      redirect_to claim_path(@claim)
    else
      flash[:error] = "Claim has not been created with error: #{@claim.errors.full_messages.to_sentence}"
      render :new
    end
  end

  def show
  end

  private

  def find_claim
    @claim = Claim.find(params[:id])
  end

  def claim_params
    params.require(:claim)
          .permit(:claim_number, :claimant_name, :email, :accident_date)
  end
end
