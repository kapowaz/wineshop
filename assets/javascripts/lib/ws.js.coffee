# Namespace for all WineShop-specific JS functionality
WineShop = (->
  module =
    name: 'WineShop'
    debug: true
    environment: null
    features:
      select2: false
    init: ->
      module.environment  = $('body').data('environment')
      module.debug        = module.environment is 'development'

      # # Track a page view every transition
      # InstantClick.on 'change' ->
      #   ga 'send', 'pageview', location.pathname + location.search
      # 
      # # Prefetch the link after mousedown
      # InstantClick.init 'mousedown'

      # Add hidden affiliate image link
      # if location.search.length > 1
      #   (new Image).src = "//edge.affiliateshop.com/public/FlexiLink#{location.search}"

      unless navigator.userAgent.indexOf('Macintosh') is -1
        $('body').addClass 'mac'
        
      unless navigator.userAgent.indexOf('Firefox') is -1
        $('body').addClass 'firefox'

      if $.browser.msie
        $('body').addClass 'ie'
        if $.browser.version is '8.0'
          $('body').addClass 'ie8'

  $(document).ready(module.init)

  window.WineShop = module
  module
)()
