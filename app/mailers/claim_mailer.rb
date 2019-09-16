class ClaimMailer < ApplicationMailer
  def claim_email
    @claim = params[:claim]
    mail(to: @claim.email, subject: "The claim #{@claim.claim_number} has been submitted.")
  end
end
