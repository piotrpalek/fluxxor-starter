Fluxxor = require "fluxxor"
Const = require "../constants"

TodoStore = Fluxxor.createStore
  initialize: ->
    @todos = []
    @bindActions(
      Const.ADD_TODO,    "onAddTodo"
      Const.TOGGLE_TODO, "onToggleTodo"
      Const.CLEAR_TODOS, "onClearTodos"
    )

  onAddTodo: (payload) ->
    @todos.push(text: payload.text, complete: false)
    @emit("change")

  onToggleTodo: (payload) ->
    payload.todo.complete = !payload.todo.complete
    @emit("change")

  onClearTodos: ->
    @todos = @todos.filter (todo) ->
      !todo.complete
    @emit("change")

  getState: ->
    todos: @todos

module.exports = TodoStore
