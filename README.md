leviathan-rails
===============

SocketPusher for ActiveSuport::Notifications

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
