require_relative '../spec_helper.rb'

RSpec.describe SlackWeatherBot do 
  describe 'Mock' do
    it 'エラーが起きたら通知' do 
      slack_client_mock = double('Slack client')
      allow(slack_client_mock).to receive(:ping)
        # .and_raise('エラーが発生しました')

      weather_bot =SlackWeatherBot.new
      allow(weather_bot).to receive(:slack_client).and_return(slack_client_mock)

      # expect{weather_bot.notify_forecast}.not_to raise_error
      # expect(weather_bot).to receive(:notify)
      # expect(weather_bot).to receive(:ping).with('今日は晴れ')
        # .at_least(:twice)
      expect(slack_client_mock).to receive(:ping).with('今日は晴れ').once

      weather_bot.notify_forecast
    end

    it 'エラーなく予報' do
      slack_client_mock = double('Slack Client')
      allow(slack_client_mock).to receive(:ping)

      allow_any_instance_of(SlackWeatherBot).to receive(:slack_client).and_return(slack_client_mock)

      weather_bot = SlackWeatherBot.new
      expect{weather_bot.notify_forecast}.not_to raise_error
    end
  end
end
