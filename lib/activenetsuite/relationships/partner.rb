module ActiveNetsuite

class Partner < ActiveNetsuite::Record
  def vendor
    @vendor ||= begin
                  vendor = ActiveNetsuite::Vendor.new
                  vendor.internal_id = internal_id
                  vendor
                end
  end

  def eligible_for_commission?
    eligible_for_commission
  end
end

end

