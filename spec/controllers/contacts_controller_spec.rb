require 'spec_helper'

describe ContactsController do
  it_should_behave_like "authenticated controller"
  
  it "create contact with valid params" do
    mock = Factory(:contact)
    Contact.stubs(:new).with({'these' => 'params'}).returns(mock)
    post :create, :contact => {:these => 'params'}
    assigns[:contact].should == mock
    response.should redirect_to(contact_url(mock))
  end
end