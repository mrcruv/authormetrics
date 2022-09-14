
require 'rails_helper'

#bisogn importare il file del test
require 'author'

RSpec.describe Author, type: :model do
  fixtures :authors
  let(:author) {authors(:one)}
  
  it 'valid auhtor' do
    expect(author).to be_valid
  end
  it 'author_id must not be valid' do
    author.author_id = nil
    expect(author).to_not be_valid
  end

  it "empty object not a valid object" do
    u=FactoryBot.build(:author)
    expect(u).to_not be_valid                                                                                                      
  end     

  it "out of range name 1" do
    author.name=''
    expect(author).to_not be_valid
  end

  it "out of range name 2" do
  
    author.name=11
    
    expect(author).to_not be_valid
  end

  it "bad format error name 1" do
    author.name=1.5
    expect(author).to_not be_valid
  end
  it "bad format error name 2" do
    author.name=nil
    expect(author).to_not be_valid
  end

end