# Requirements

1. write a rails application using rails 6
2. the project is about the claim settlement tracking system with the following items needed:

1. create a claim that has fields: claim_number, claimant_name, email and accident date
2. once claim created, email will be sent to claimant inbox using the above email attribute
3. system can update the claim settlement tracking with statuses: in progress, evaluation, approval and rejection

please note:
1. no need to care about the layout as long as can create claim and receive email
2. no Rspec needed
3. require clean code based

# System requirements

Ruby 2.6.2

Rails 6.0.0

# Usage

## Claimant create claim at:
http://localhost:3000/claims/new

## Admin update claim status at:
http://localhost:3000/admin/claims
