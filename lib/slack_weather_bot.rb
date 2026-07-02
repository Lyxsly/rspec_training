require 'slack-notifier'
require 'dotenv/load'

class SlackWeatherBot

  # def search_first_weather_tweet
  #   slack_client.search('天気').first.text
  # end
  def notify_forecast
    slack_client.ping '今日は晴れ'
  rescue => e
    notify(e)
  end

  private

  def slack_client
    Slack::Notifier.new(ENV['SLACK_WEBHOOK_URL'])
  end

  def notify(error)
  end
end
# puts "読み込んだURL: #{ENV['SLACK_WEBHOOK_URL'].inspect}"
# bot = SlackMock.new
# bot.notify_forecast

