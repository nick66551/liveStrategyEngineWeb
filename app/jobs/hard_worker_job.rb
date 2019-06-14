class HardWorkerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    output = system("cd .. && cd liveStrategyEngine && python3 main_banZhuan.py")
  end
end
