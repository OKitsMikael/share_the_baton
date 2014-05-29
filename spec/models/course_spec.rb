require 'spec_helper'

describe Course do
  it { should have_many(:enrollments) }
  it { should have_many(:checkpoints) }

end
