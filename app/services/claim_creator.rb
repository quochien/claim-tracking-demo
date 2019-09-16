class ClaimCreator
  attr_reader :claim

  def initialize(claim)
    @claim = claim
  end

  def create
    success = claim.save
    send_email_to_claimant if success
    success
  end

  private

  def send_email_to_claimant
    ClaimMailer.with(claim: claim).claim_email.deliver_later
  end
end
