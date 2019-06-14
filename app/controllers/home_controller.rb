class HomeController < ApplicationController

    require 'os'
    skip_before_action :verify_authenticity_token, :only => [:get_log]
    

    def index

    end

    def start_service
        system("cd .. && cd liveStrategyEngine && python3 main_banZhuan.py")
    end

    def end_service
        if OS.mac?
            output = `ps aux|grep 'Python main_banZhuan.py'`
            strings = output.split(" ")
            system("kill #{strings[1]}")
        elsif OS.windows
            output = `C:\ taskkill /f /im python.exe`
        end
    end

    def get_log
        params['_json'].each do |row_data|
            ActionCable.server.broadcast "home_channel", message: row_data['data']
        end
    end
end
