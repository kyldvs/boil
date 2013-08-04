/**
 *  @jsx React.DOM
 */
var deps = ['react'];

define(deps, function(React) {
  return React.createClass({
    render: function() {
      return (
        <div className="jumbotron">
          <h1>Hello World</h1>
        </div>
      );
    }
  });
});