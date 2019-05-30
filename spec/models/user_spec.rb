require 'rails_helper'

describe User do
  xit 'exists' do
    user = User.create(name: "Andrew", password: "asdf")

    expect(user).to be_a(User)
    expect(user.name).to eq("Andrew")
  end
end
