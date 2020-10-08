require "application_system_test_case"

class Post1sTest < ApplicationSystemTestCase
  setup do
    @post1 = post1s(:one)
  end

  test "visiting the index" do
    visit post1s_url
    assert_selector "h1", text: "Post1s"
  end

  test "creating a Post1" do
    visit post1s_url
    click_on "New Post1"

    fill_in "Description", with: @post1.description
    fill_in "Genere", with: @post1.genere
    fill_in "Integer", with: @post1.integer
    fill_in "No.of", with: @post1.no.of
    fill_in "Pages", with: @post1.pages
    fill_in "String", with: @post1.string
    fill_in "Title", with: @post1.title
    click_on "Create Post1"

    assert_text "Post1 was successfully created"
    click_on "Back"
  end

  test "updating a Post1" do
    visit post1s_url
    click_on "Edit", match: :first

    fill_in "Description", with: @post1.description
    fill_in "Genere", with: @post1.genere
    fill_in "Integer", with: @post1.integer
    fill_in "No.of", with: @post1.no.of
    fill_in "Pages", with: @post1.pages
    fill_in "String", with: @post1.string
    fill_in "Title", with: @post1.title
    click_on "Update Post1"

    assert_text "Post1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Post1" do
    visit post1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post1 was successfully destroyed"
  end
end
