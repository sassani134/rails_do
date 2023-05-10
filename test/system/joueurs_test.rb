require "application_system_test_case"

class JoueursTest < ApplicationSystemTestCase
  setup do
    @joueur = joueurs(:one)
  end

  test "visiting the index" do
    visit joueurs_url
    assert_selector "h1", text: "Joueurs"
  end

  test "should create joueur" do
    visit joueurs_url
    click_on "New joueur"

    fill_in "Job", with: @joueur.job_id
    fill_in "Name", with: @joueur.name
    click_on "Create Joueur"

    assert_text "Joueur was successfully created"
    click_on "Back"
  end

  test "should update Joueur" do
    visit joueur_url(@joueur)
    click_on "Edit this joueur", match: :first

    fill_in "Job", with: @joueur.job_id
    fill_in "Name", with: @joueur.name
    click_on "Update Joueur"

    assert_text "Joueur was successfully updated"
    click_on "Back"
  end

  test "should destroy Joueur" do
    visit joueur_url(@joueur)
    click_on "Destroy this joueur", match: :first

    assert_text "Joueur was successfully destroyed"
  end
end
