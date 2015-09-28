class GemParser
  attr_reader :contents, :type
  def initialize(type, contents)
    @contents = contents
    @type = type
  end

  def to_json
    Oj.dump(dependencies) unless contents.nil?
  end

  def dependencies
    parse.dependencies.inject({}) do |deps, dep|
      deps.merge!(dep.name => dep.requirement.to_s)
    end
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

  def self.podfile(contents)
    new(:podfile, contents)
  end
end
