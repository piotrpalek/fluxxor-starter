# @cjsx React.DOM
Fluxxor = require "fluxxor"
React = require "React"

actions = require "./actions"
stores = require "./stores"
TodoList = require "./components/todo_list"

flux = new Fluxxor.Flux(stores, actions)

React.renderComponent(<TodoList flux={flux} />, document.getElementById("app"))
