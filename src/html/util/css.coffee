###
These are utility methods that are meant to help deal with CSS
###
define [], () -> {

  ###
  Condition Classes

  if `con` is undefined
  @return a space separated list of the keys in `classNames` with truthy values

  otherwise
  @return classNames if `con` otherwise an empty string
  ###
  cc: (classNames, con) ->
    if (typeof con == 'undefined')
      res = ''
      for className, apply of classNames
        if apply
          res = res + ' ' + className
      return res.trim()
    else
      if con
        return classNames
      else
        return ''
}
