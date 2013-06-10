/**
 * @jsx React.DOM
 */
define(['react'], function(React) {
  var CommentBox = React.createClass({
    render: function() {
      return (
        <div class="commentBox">
          Hello, world! I am a CommentBox.
        </div>
      );
    }
  });

  return CommentBox;
});