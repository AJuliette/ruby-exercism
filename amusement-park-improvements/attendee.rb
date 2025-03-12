class Attendee
  attr_reader :height, :pass_id

  def initialize(height)
    @height = height
    @pass_id = nil
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  def has_pass?
    !@pass_id.nil?
  end

  def fits_ride?(height_required)
    @height >= height_required
  end

  def allowed_to_ride?(height_required)
    has_pass? && fits_ride?(height_required)
  end
end
