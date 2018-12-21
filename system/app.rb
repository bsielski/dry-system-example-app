require 'dry/system/container'

class App < Dry::System::Container
  configure do |config|
    # config.root = Pathname('../..')
    config.auto_register = 'lib'
  end
  load_paths!('lib')
  register(:stdout, STDOUT)
  register(:stdin, STDIN)
  register(:app, App)
end
