# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ToTimezone::TzExt do
  context 'when using valid timezone' do
    it 'returns datetime with converted timezone' do
      timestamp = DateTime.parse('2025-02-07 07:00:00 +0800')

      expect(timestamp.to_utc.to_s).to eq('2025-02-06 23:00:00 UTC')
    end
  end

  context 'when pass date is a string' do
    it 'returns datetime with converted timezone' do
      timestamp = '2025-02-07 07:00:00 +0800'

      expect(timestamp.to_utc.to_s).to eq('2025-02-06 23:00:00 UTC')
    end
  end

  context 'when passing datetime string without timezone' do
    it 'returns datetime with appended timezone' do
      timestamp = '2025-02-07 07:00:00'

      expect(timestamp.to_pht.to_s).to eq('2025-02-07 07:00:00 +0800')
    end
  end
end
