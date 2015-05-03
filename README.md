[![Code Climate](https://codeclimate.com/github/zrasool88/inject-method-rewrite/badges/gpa.svg)](https://codeclimate.com/github/zrasool88/inject-method-rewrite) [![Test Coverage](https://codeclimate.com/github/zrasool88/inject-method-rewrite/badges/coverage.svg)](https://codeclimate.com/github/zrasool88/inject-method-rewrite) [![Build Status](https://travis-ci.org/zrasool88/inject-method-rewrite.svg)](https://travis-ci.org/zrasool88/inject-method-rewrite) [![Dependency Status](https://gemnasium.com/zrasool88/inject-method-rewrite.svg)](https://gemnasium.com/zrasool88/inject-method-rewrite)

#Description
Second of two challenges assigned for week 2 @ Makers Academy. Re-writing ruby's inject method.

#Challenge
1. Reopen the Array class or subclass it.
2. Rewrite the inject method. Write a test for it first. Don't worry about returning an enumerator, assume a block is always given
3. Name your method differently (that is, not inject() or subclass Array) because rspec uses inject() internally, so the tests will fail with weird messages unless your implementation of inject is perfect.
4. If you would like a challenge, rewrite inject using two approaches: using iterators and using recursion but it’s not required to pass.

#Learning Objective
1. To understand how the inject method works

#How to use

1. Clone the repo
2. Load the array.rb file in irb using the command:
    require './lib/array.rb'
3. Create a new array of objects
4. Call the pinject method on the array as you would the inject method
5. To use the recursive method, call pinject_recursive on the array as you would the inject or pinject methods

#How to test

1. Run 'bundle install'
2. Run 'bundle exec rspec'

#What I learned

1. What &method and &block does
2. What the to_proc method does
3. How the inject method does its magic
4. Recursion
