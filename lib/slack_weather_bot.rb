require 'slack-notifier'
require 'dotenv/load'

class SlackWeatherBot

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

