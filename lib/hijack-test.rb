#!/usr/bin/env ruby

#================================================================================#
#     Clipboard Hijack Tester - Keep Your Bitcoins Safe - @cybersecrs            #
#================================================================================#


require 'clipboard'


class HijackTest


#  Define Bitcoin and E-mail address

  BTC   = "3AcLS7dgqVM1msDoaxzynNh4jRwmnQhcQ9"
  EMAIL = "hijack@test.net"


#  Define time to sleep between clipboard checking

  def initialize(sleep_time)
    @sleep = sleep_time.to_f
  end


#  Alarm for infected clipboard

  def alarm
    puts   "\nYOUR DEVICE IS INFECTED WITH CLIPBOARD HIJACKER !"
    system("notify-send -u critical 'YOUR DEVICE IS INFECTED WITH CLIPBOARD HIJACKER !'")
    system("spd-say 'Your device is infected with clipboard hijacker!'")
  end


#  Define copy

  def copy(str)
    Clipboard.copy(str)
  end


#  Define paste

  def paste
    Clipboard.paste
  end


#  Clear Clipboard

  def clear
    Clipboard.clear
  end


#  Test clipboard with bitcoin address
 
  def test_btc
    a = copy(@btc)
    sleep(@sleep)
    b = paste
    clear
    unless a == b
      alarm; puts "Bitcoin address changed in clipboard!\n\n"
    else
      puts "Bitcoin pattern - test passed"
    end
  end


#  Test clipboard with e-mail
 
  def test_email
    a = copy(@email)
    sleep(@sleep)
    b = paste
    clear
    unless a == b
      alarm; puts "E-mail address changed in clipboard!\n\n"
    else
      puts "E-mail pattern - test passed"
    end
  end


#  Define time to wait between testing clipboard

  def wait!
    sleep(@sleep)
  end


#  Test clipboard for different types

  def start
    test_btc
    test_email
  end

end    # END OF CLASS
