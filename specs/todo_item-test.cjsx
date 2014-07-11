# @cjsx React.DOM
jest.dontMock "../src/javascript/components/todo_item.cjsx"
jest.dontMock "util"

React = require "react/addons"
TodoItem = require "../src/javascript/components/todo_item.cjsx"
TestUtils = React.addons.TestUtils

describe "TodoItem", ->
  describe "completed item", ->
    beforeEach ->
      @itemText = "some text"
      @item = <TodoItem todo={ complete: true, text: @itemText } />
      TestUtils.renderIntoDocument(@item)
      @domItem = @item.getDOMNode()

    it "has the correct text", ->
      expect(@domItem.textContent).toBe(@itemText)

    it "text is lined through", ->
      expect(@domItem.style.textDecoration).toBe("line-through")
