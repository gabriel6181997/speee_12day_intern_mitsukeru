# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/prefectures', type: :request do
  describe 'GET /prefectures' do
    let!(:prefecture) { create(:prefecture) }

    context '作成されたidを指定した場合' do
      it 'returns http success' do
        get prefecture_path(prefecture.id)
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
