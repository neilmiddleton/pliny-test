require "test_helper"

describe Ticket do

  it 'validates presence of body' do
    assert_raises Sequel::ValidationFailed do
      Ticket.create
    end
  end

  it 'creates OK' do
    t = Ticket.create(body: 'hello world')
    assert !t.id.nil?
  end

end
