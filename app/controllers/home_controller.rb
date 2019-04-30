class HomeController < ApplicationController
    def index

    end

    def start_service
        output = system("cd .. && cd liveStrategyEngine && python3 main_banZhuan.py")
        
    end
end
