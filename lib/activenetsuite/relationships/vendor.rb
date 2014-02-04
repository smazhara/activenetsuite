module ActiveNetsuite

class Vendor < ActiveNetsuite::Record
  def partner
    @partner ||= begin
                  partner = ActiveNetsuite::Partner.new
                  partner.internal_id = internal_id
                  partner
                end
  end
end

end

