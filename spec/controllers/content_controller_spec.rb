require 'spec_helper'

describe ContentController do

  describe "GET 'free_iosbc'" do
    it "returns http success" do
      get 'free_iosbc'
      response.should be_redirect
    end
  end

  describe "GET 'iosbc'" do
    it "returns http success" do
      get 'iosbc'
      response.should be_redirect
    end
  end

  describe "GET 'platinum'" do
    it "returns http success" do
      get 'platinum'
      response.should be_redirect
    end
  end

end
