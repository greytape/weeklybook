

RSpec.describe Group, type: :model do
  it "is valid with valid attributes" do
    expect(Group.new(name: 'group_name')).to be_valid
  end
end
