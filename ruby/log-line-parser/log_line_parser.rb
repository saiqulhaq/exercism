class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    find = line.match(/\[\w*\]:\s*([\w\W\s]*)/)
    return find[1].strip unless find[1].nil?

    ''
  end

  def log_level
    find = line.match(/\[(\w*)\]/)

    return find[1].to_s.downcase.strip unless find[1].nil?

    ''
  end

  def reformat
    "#{message} (#{log_level})"
  end

  private

  attr_reader :line
end
