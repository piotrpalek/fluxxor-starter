# @cjsx React.DOM
React = require 'React'
Fluxxor = require 'fluxxor'

FluxMixin = Fluxxor.FluxMixin(React)
StoreWatchMixin = Fluxxor.StoreWatchMixin

TodoItem = require './todo_item'

App = React.createClass
  mixins: [FluxMixin, StoreWatchMixin("TodoStore")]

  getInitialState: ->
    newTodoText: ""

  getStateFromFlux: ->
    @getFlux().store("TodoStore").getState()

  render: ->
    <div>
      <ul>
        { @state.todos.map (todo, i) ->
          <li key={i}><TodoItem todo={todo} /></li>
        }
      </ul>
      <form onSubmit={ @onSubmitForm}>
        <input type="text"
               size="30"
               placeholder="New Todo"
               value={ @state.newTodoText}
               onChange={ @handleTodoTextChange} />
        <input type="submit" value="Add Todo" />
      </form>
      <button onClick={ @clearCompletedTodos}>Clear Completed</button>
    </div>

  handleTodoTextChange: (e) ->
    @setState(newTodoText: e.target.value)

  onSubmitForm: (e) ->
    e.preventDefault()
    if (@state.newTodoText.trim())
      @getFlux().actions.addTodo(@state.newTodoText)
      @setState({newTodoText: ""})

  clearCompletedTodos: (e) ->
    @getFlux().actions.clearTodos()

module.exports = App
