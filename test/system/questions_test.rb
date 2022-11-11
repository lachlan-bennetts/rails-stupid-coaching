require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "Saying hello yields grumpy response from Coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask!"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "Asking Question yields silly question response from Coach" do
    visit ask_url
    fill_in "question", with: "Okay?"
    click_on "Ask!"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "Coach correct response" do
    visit ask_url
    fill_in "question", with: "i am GOING to work right now!"
    click_on "Ask!"

    assert_text "Great!"
  end
end
