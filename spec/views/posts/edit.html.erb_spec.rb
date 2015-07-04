require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "MyString",
      :going_from => "MyText",
      :going_to => "MyText",
      :phone_number => "MyString",
      :user => nil
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "textarea#post_going_from[name=?]", "post[going_from]"

      assert_select "textarea#post_going_to[name=?]", "post[going_to]"

      assert_select "input#post_phone_number[name=?]", "post[phone_number]"

      assert_select "input#post_user_id[name=?]", "post[user_id]"
    end
  end
end
