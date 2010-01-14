# -*- coding: undecided -*-
require 'rubygems'
require 'autotest/growl'

module Autotest::Growl
  def self.growl(title, message, icon, priority=0, stick="")
    priority = if priority > 0  # error or feailed
                 1              # red
               elsif priority == -2 # passed
                 2                  # green
               else
                 3              # yellow
               end
    system "stumpish echo ^#{priority}* #{title} #{message}"
  end
end
