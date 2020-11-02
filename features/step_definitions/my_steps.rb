When("Inicio el Ahorcado") do
    visit '/'
end
  
Then("muestra {string}") do |titulo|
    expect(page).to have_css "h1", text: titulo
end

Given("Inicio la aplicación con un jugador") do
    visit '/'
end

  When("arriesga con palabra {string}") do |palabra|
    fill_in "palabra", :with => palabra
    click_button "Arriesgar"
  end


