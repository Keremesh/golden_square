class Present
  def wrap(contents)
  # error if we are trying to wrap if it was already wrapped
    fail "All contents have already been wrapped." unless @contents.nil?
     @contents = contents
  end

  def unwrap
  # error if nothing was wrapped and we are trying to unwrap
    fail "No contents have been wrapped." if @contents.nil?
    return @contents
  end
end
 