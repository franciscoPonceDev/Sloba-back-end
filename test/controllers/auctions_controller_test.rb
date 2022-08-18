require 'test_helper'

class AuctionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auction = auctions(:one)
  end

  test 'should get index' do
    get auctions_url, as: :json
    assert_response :success
  end

  test 'should create auction' do
    assert_difference('Auction.count') do
      post auctions_url, params: { auction: { description: @auction.description, title: @auction.title } }, as: :json
    end

    assert_response :created
  end

  test 'should show auction' do
    get auction_url(@auction), as: :json
    assert_response :success
  end

  test 'should update auction' do
    patch auction_url(@auction), params: { auction: { description: @auction.description, title: @auction.title } },
                                 as: :json
    assert_response :success
  end

  test 'should destroy auction' do
    assert_difference('Auction.count', -1) do
      delete auction_url(@auction), as: :json
    end

    assert_response :no_content
  end
end
