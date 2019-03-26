require 'rails_helper'

# do not change the contents of this file

RSpec.describe Agency, type: :model do
  it { should have_many(:actors) }
end
