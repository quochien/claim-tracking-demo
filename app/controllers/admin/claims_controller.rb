class Admin::ClaimsController < ApplicationController
  before_action :find_claim, only: [:edit, :update]

  def index
    @claims = Claim.all
  end

  def edit
  end

  def update
    @claim.assign_attributes(claim_params)

    if @claim.save
      flash[:success] = 'Claim has been updated'
      redirect_to admin_claims_path
    else
      flash[:error] = "Claim has not been updated with error: #{@claim.errors.full_messages.to_sentence}"
      render :edit
    end
  end

  private

  def find_claim
    @claim = Claim.find(params[:id])
  end

  def claim_params
    params.require(:claim).permit(:status)
  end
end
