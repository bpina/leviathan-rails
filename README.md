leviathan-rails
===============

SocketPusher for ActiveSuport::Notifications

<p>
leviathan-rails requires connection to a UDP socket listening on some port. 
It will basically forward rails instrumentation data wherever you point it. 
This gem is intended for use with <a href="https://github.com/bpina/leviathan">Leviathan<a>
</p>

<h2> Installation </h2>
<p>With gem install:</p>
<pre>
gem install leviathan-rails -v '~> 0.0.5.alpha'
</pre>

<p>or put it in your Gemfile:</p>
<pre>
gem 'leviathan-rails', '~> 0.0.5.alpha'
</pre>

<h2>Setup</h2>
<p>In config/environment.rb:/p>
<pre>
Leviathan::initialize_subscribers({host: '127.0.0.1', port: 8080})
</pre>
