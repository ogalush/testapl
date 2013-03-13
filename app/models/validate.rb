# coding: utf-8

class Validate < ActiveRecord::Base
validates_length_of :name, :maximum=>10
end 