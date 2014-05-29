require 'spec_helper'

describe Checkpoint do
  it { should belong_to(:course) }
  it { should have_many(:choices)}
end
