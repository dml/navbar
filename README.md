# Navbar

Rails Navigation Bar Renderer

[![Gem Version](https://badge.fury.io/rb/navbar.png)](http://badge.fury.io/rb/navbar)
[![Build Status](https://travis-ci.org/dml/navbar.png?branch=master)](https://travis-ci.org/dml/navbar)


## Installation

Add this line to your application's Gemfile:

    gem 'navbar'

Or install it yourself as:

    $ gem install navbar

## Usage

In rails view

    = navbar class: "navbar" do |tab|
      = tab.first "First", first_path
      = tab.second "Second", second_path
      = tab.third "Third", third_path

In rails controller

    class ItemsController < ApplicationController
      nav_tab :first, class: "bold"
      nav_tab :second, active: true

      ...
    end

Will render

    <ul class="navbar">
      <li class="bold"><a href="/first">First</a></li>
      <li class="active"><a href="/second">Second</a></li>
      <li><a href="/third">Third</a></li>
    </ul>

