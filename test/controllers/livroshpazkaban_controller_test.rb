require "test_helper"

class LivroshpazkabanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get livroshpazkaban_index_url
    assert_response :success
  end

  test "should get busca" do
    get livroshpazkaban_busca_url
    assert_response :success
  end

  test "should get livros" do
    get livroshpazkaban_livros_url
    assert_response :success
  end
end
