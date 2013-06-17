/**
 *  @jsx React.DOM
 */
deps = ['react'];

define(deps, function(React) {
  return React.createClass({
    render: function() {
      return (
        <div>
          <h1 class={'hello'}>Hello World</h1>
        </div>
      );
    }
  });
});