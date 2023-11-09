class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    splitted_message = @line.split(": ")
    splitted_message[1].strip
  end

  def log_level
    splitted_log_level = @line.split("]")[0]
    log_level_uppercase = splitted_log_level[1..-1].downcase
  end

  def reformat
    return "#{message} (#{log_level})"
  end
end
