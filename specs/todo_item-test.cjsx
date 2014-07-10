# @cjsx React.DOM
jest.dontMock "../src/javascript/components/todo_item.cjsx"
React = require "react/addons"
TodoItem = require "../src/javascript/components/todo_item.cjsx"
# TestUtils = React.addons.TestUtils

# describe "TodoItem", ->
#   describe "completed item", ->
#     beforeEach ->
#       @item = <TodoItem todo={ complete: true } />
#       TestUtils.renderIntoDocument(checkbox)

#     it "text is lined through", ->
#       debugger


    # # Render a checkbox with label in the document
    # checkbox = <CheckboxWithLabel labelOn="On" labelOff="Off" />
    # TestUtils.renderIntoDocument(checkbox)

    # # Verify that it"s Off by default
    # label = TestUtils.findRenderedDOMComponentWithTag(checkbox, "label")
    # expect(label.getDOMNode().textContent).toEqual("Off")

    # # Simulate a click and verify that it is now On
    # input = TestUtils.findRenderedDOMComponentWithTag(checkbox, "input")
    # TestUtils.Simulate.change(input)
    # expect(label.getDOMNode().textContent).toEqual("On")
