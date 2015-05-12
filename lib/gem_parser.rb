class GemParser
  attr_reader :contents, :type
  def initialize(type, contents)
    @contents = contents
    @type = type
  end

  def to_json
    Oj.dump(parse.dependencies)
  end

  def parse
    Gemnasium::Parser.send(type, contents)
  end

  def self.gemspec(contents)
    new(:gemspec, contents)
  end

  def self.gemfile(contents)
    new(:gemfile, contents)
  end
end
