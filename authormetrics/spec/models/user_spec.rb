require 'rails_helper'

#bisogn importare il file del test
require 'user'

RSpec.describe User, type: :model do
  fixtures :users
  let(:user1) { users(:one) }
  let(:user2) { users(:two) }

  
  it 'valid user' do
    user1.password= "aaaaaaaaaaaa"
    expect(user1).to be_valid
    user2.password="aaaaaaaaaaaa"
    expect(user2).to be_valid
  end
  it 'user_id must not be valid' do
    user1.user_id = nil
    expect(user1).to_not be_valid
  end

  it "empty object not a valid object" do
    u=FactoryBot.build(:user)
    expect(u).to_not be_valid                                                                                                      
  end     

  it "out of range username" do
    user1.username='a'
    expect(user1).to_not be_valid
  end

  it "out of range password" do
  
    user1.password="aa"
    expect(user1).to_not be_valid
  end

  it "bad email" do
    user1.email="email"
    expect(user1).to_not be_valid
  end
  it "bad email 2" do
    user1.email=3
    expect(user1).to_not be_valid
  end
  
  it "nil username" do
    user1.username=nil
    expect(user1).to_not be_valid
  end
  
  it " empty string username error" do
    user1.username=''
    expect(user1).to_not be_valid
  end

end
