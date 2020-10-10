*This gem is update of CLIT, but name is taken and I found this one more understandable about what it does*

# Introduction to Clipboard Hijack Tester

Clipboard is always a good resource to steal data. Passwords and bank accounts were targeted in past,
and cryptocurrencies in last few years. This is hard to determine since there's no server
for communication, it doesn't care about your files, it's only purpose is to wait for you to copy
BTC address to make a payment, to steal your coins. To keep us all safer, I've created `hijack-test gem`.

---
# How to Run

Clone repository and run bin/setup to install dependencies:

```
git clone https://www.github.com/cybersecrs/hijack-test && cd hijack-test && bin/setup
```  

This will download source of hijack-test and install:

 * notify-send
 * spd-say
 * gem 'clipboard'  

If you have notify-send and spd-say, you can run:

```
bundle install
or
gem install clipboard
```  

To install gem locally run:

```
gem install hijack-test
```  

This is not recommended way to install, until I create list of addresses to use, not just one

**Edit patterns for more security. Maybe someone put this address to avoid hijack-test.**

Open lib/hijack-test.rb and edit lines:

```
BTC   = 'change btc address here'
EMAIL = 'change email address here'
```  

Execute once

```
ruby bin/hit
```  

Execute every "n" seconds (default 1 hour):

```
ruby bin/hit -s
or
ruby bin/hit --start
```  

To change sleep time, edit number of seconds in *bin/hit* on line 11:

```
sleep(3600)
```  


---
# How Clipboard Hijacker Work?

There are many ways to create malware that steal or change clipboard data, and all of them use
different techniques to manipulate system clipboard api. Earlier this year [Ruby Gems Website](https://rubygems.org)
was filled with fake gems that include clipboard hijacker. It was found in 720 *ruby gems,* and malware targeted
windows users only. It monitor users clipboard, and if it recognize string similar to BTC address,
it change your clipboard data to one of many addresses from the list (recognition in this malware is based
on regex). Hopefully, it's removed after two days and nobody lost their money. But that's for 2020 only,
because [Ruby Gem's](https://rubygems.org) was under the same attack 2018 and 2019. They also think the
attack was performed by same people.
  
[Check 'CLISTER' repository for proof of concept how hijackers work](https://www.github.com/cybersecrs/clister)
>This script use `CryptoAddress Gem` to determine if clipboard data is valid address. If address is valid,
>it's changed with one you defined.  

---
## How To Protect?
        
Get software that check your clipboard for changes when bitcoin address is copied.
I didn't found one, so I've created [Hijack-Test](https://www.github.com/cybersecrs/hijack-test).
This is in early development stage, but do it's job and test your device for Bitcoin address and E-mail address patterns.
If copied and pasted addresses are not same, you'll receive alarm with sound and visual notification, and error in terminal window.

---
## Contribution

If you like this gem, feel free to share it with your friends, so more people can use it.  
[cybersecrs.github.io](https://cybersecrs.github.io)
