class Ticket < Sequel::Model
  plugin :validation_helpers
  plugin :json_serializer

  def validate
    super
    validates_presence [:body]
  end

end
