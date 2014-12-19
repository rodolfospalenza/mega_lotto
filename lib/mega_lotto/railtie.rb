require "rails"
require "mega_lotto/helper"

module MegaLotto
  class Railtie < Rails::Railtie
    railtie_name :mega_lotto

    rake_tasks do
      Dir[File.join(File.dirname(__FILE__),'../tasks/*.rake')].each { |f| load f }
    end

    initializer "mega_lotto.action_view" do
      ActiveSupport.on_load(:action_controller) do
        include MegaLotto::Helper
      end
    end
  end
end
