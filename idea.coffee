

StyleObj =
  '.home-page__nav':
    padding: '2rem 1rem'
    backgroundColor: 'white'

  '.home-page__nav__links':
    li:
      '&:first-child':
        backgroundColor: 'blue'

ToCSS = (obj, prefix = "") ->
  subs = {
    string: []
    object: []
  }
  Object.keys(obj).map (key) ->
    val = obj[key]
    subs[typeof val].push(key)
  css = ""
  if subs.string.length
    rules = ("#{key}:#{obj[key]}" for key in subs.string)
    css += "#{prefix} { #{rules.join("; ")} }\n"
  for key in subs.object
    css += ToCSS(obj[key], "#{prefix} #{key}")
  css

console.log(ToCSS(StyleObj))

#
#
#HomePage = Component
#  tag: "div"
#  inherits: []
#  children: [
#    HomePageNav()
#  ]
