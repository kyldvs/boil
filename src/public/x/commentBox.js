deps = ['react', 'jsx!x/commentForm', 'jsx!x/commentList'];

define(deps, function(React, CommentForm, CommentList) {
  return React.createClass({
    render: function() {
      return (
        <div class="commentBox">
          <h1>Comments</h1>
          <CommentList />
          <CommentForm />
        </div>
      );
    }
  });
});