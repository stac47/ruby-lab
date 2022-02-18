#!/usr/bin/env ruby
# vi: set fileencoding=utf-8 :
# frozen_string_literal: true

# A node of the tree
class Node
  attr_accessor :value, :children

  def initialize(value)
    @value = value
    @children = []
  end

  def add_child(node)
    @children << node
  end
end

# The tree visitor
class NodeVisitor
  def initialize
    @level = 0
  end

  def visit(root)
    puts "#{'  ' * @level}#{root.value}"
    return if root.children.empty?

    root.children.each do |node|
      @level += 1
      visit(node)
      @level -= 1
    end
  end
end

root = Node.new('root')
child1 = Node.new('child1')
child2 = Node.new('child2')
baby1 = Node.new('baby1')
baby2 = Node.new('baby2')
baby3 = Node.new('baby3')

root.add_child(child1)
root.add_child(child2)
child1.add_child(baby1)
child1.add_child(baby2)
child1.add_child(baby3)

visitor = NodeVisitor.new
visitor.visit root
