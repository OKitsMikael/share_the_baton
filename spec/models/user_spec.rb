require 'spec_helper'

describe User do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should have_many(:enrollments) }
  it { should have_many(:courses).through(:enrollments) }
  it { should have_many(:choices) }

end
