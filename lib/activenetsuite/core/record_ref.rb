module ActiveNetsuite

class RecordRef < BaseRef
  alias_method :internal_id, :xmlattr_internalId
  alias_method :internal_id=, :xmlattr_internalId=
  alias_method :external_id, :xmlattr_externalId
  alias_method :external_id=, :xmlattr_externalId=
  alias_method :type, :xmlattr_type
  alias_method :type=, :xmlattr_type=

  def ==(other)
    self.type == other.type &&
      self.internal_id == other.internal_id &&
      self.external_id == other.external_id
  end

  def record
    rec = record_class.new
    rec.internal_id = internal_id
    rec.external_id = external_id
    rec
  end

  def delete
    Record.delete([self])
  end

  private

  def record_class
    ('::ActiveNetsuite::' + type.camelize).constantize
  end
end

end
