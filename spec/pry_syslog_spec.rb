require 'spec_helper'

RSpec.describe PrySyslog do
  it 'has a version number' do
    expect(PrySyslog::VERSION).not_to be nil
  end
end
