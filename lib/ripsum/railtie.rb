class Railtie < Rails::Railtie
  initializer "ripsum.initialize_ripsum_helper" do |app|
    ActiveSupport.on_load(:action_view) do
      include Ripsum
    end
  end
end
