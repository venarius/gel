$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "paperback"

require "minitest"
require "minitest/mock"

class << Minitest
  undef load_plugins
  def load_plugins
    # no-op
  end
end

Minitest.autorun

def fixture_file(path)
  File.expand_path("../fixtures/#{path}", __FILE__)
end
