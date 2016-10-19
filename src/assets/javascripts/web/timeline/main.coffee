$ = require 'jquery'
{ translateY, opacity, backdropScale } = transitions = require './transitions'

# Setup map
Map = require '../map'
mapTransitioned = false
map = null
$ -> map = new Map $paths: $('#paths path')

module.exports = [
  # museums-and-institutions

  { # In
    stage: '#frame-museums-and-institutions', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '.frame--backdrop-credit', opacity: opacity.in }
      { element: '.frame--backdrop', opacity: opacity.in, scale: backdropScale.a }
    ]
  }
  { # Hold
    stage: '#frame-museums-and-institutions', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '.frame--backdrop', scale: backdropScale.b }
    ]
  }
  { # Out
    stage: '#frame-museums-and-institutions', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '.frame--backdrop-credit', opacity: opacity.out }
      { element: '.frame--backdrop', opacity: opacity.out, scale: backdropScale.c }
    ]
  }

  # educational-database

  { # In
    stage: '#frame-educational-database', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '#columns', opacity: [0, 1] }
      { element: '.column-0', translateY: [-25, 0] }
      { element: '.column-1', translateY: [25, 0] }
      { element: '.column-2', translateY: [-25, 0] }
      { element: '.column-3', translateY: [25, 0] }
    ]
  }
  { # Hold
    stage: '#frame-educational-database', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '.column-0', translateY: [0, 75] }
      { element: '.column-1', translateY: [0, -75] }
      { element: '.column-2', translateY: [0, 75] }
      { element: '.column-3', translateY: [0, -75] }
    ]
  }
  { # Out
    stage: '#frame-educational-database', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '#columns', opacity: [1, 0] }
      { element: '.column-0', translateY: [75, 150] }
      { element: '.column-1', translateY: [-75, -150] }
      { element: '.column-2', translateY: [75, 150] }
      { element: '.column-3', translateY: [-75, -150] }
    ]
  }

  # inquiries-graph

  { # In
    stage: '#frame-inquiries-graph', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: [30, 24] }
      { element: '.graph', opacity: opacity.in }
      { element: '.graph--caption', opacity: opacity.in }
    ]
  }

  { # Progress Data
    stage: '#frame-inquiries-graph', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: [24, 18] }
      { element: '#graph-overlay--data', translateX: [0, 103] }
    ]
  }
  { # Progress Label
    stage: '#frame-inquiries-graph', duration: '50%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: [18, 12] }
      { element: '#graph-overlay--label_2012', opacity: opacity.out }
    ]
  }
  { # Progress Data
    stage: '#frame-inquiries-graph', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: [12, 6] }
      { element: '#graph-overlay--data', translateX: [103, 206] }
    ]
  }
  { # Progress Label
    stage: '#frame-inquiries-graph', duration: '50%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: [6, 0] }
      { element: '#graph-overlay--label_2013', opacity: opacity.out }
    ]
  }
  { # Progress Data
    stage: '#frame-inquiries-graph', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: [0, -6] }
      { element: '#graph-overlay--data', translateX: [206, 309] }
    ]
  }
  { # Progress Label
    stage: '#frame-inquiries-graph', duration: '50%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: [-6, -12] }
      { element: '#graph-overlay--label_2014', opacity: opacity.out }
    ]
  }
  { # Progress Data
    stage: '#frame-inquiries-graph', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: [-12, -18] }
      { element: '#graph-overlay--data', translateX: [309, 412] }
    ]
  }
  { # Progress Label
    stage: '#frame-inquiries-graph', duration: '50%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: [-18, -24] }
      { element: '#graph-overlay--label_2015', opacity: opacity.out }
    ]
  }

  { # Out
    stage: '#frame-inquiries-graph', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: [-24, -30] }
      { element: '.graph', opacity: opacity.out }
      { element: '.graph--caption', opacity: opacity.out }
    ]
  }


  # added-categories

  { # In
    stage: '#frame-added-categories', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '#categories', translateY: [150, 50] }
      { element: '#category-0', opacity: [0, 1] }
      { element: '#category-1', opacity: [-0.25, 1] }
      { element: '#category-2', opacity: [-0.5, 1] }
      { element: '#category-3', opacity: [-0.75, 1] }
    ]
  }
  { # Hold
    stage: '#frame-added-categories', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '#categories', translateY: [50, -50] }
    ]
  }
  { # Out
    stage: '#frame-added-categories', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '#categories', translateY: [-50, -150] }
      { element: '#category-0', opacity: [1, -0.75]}
      { element: '#category-1', opacity: [1, -0.5] }
      { element: '#category-2', opacity: [1, -0.25] }
      { element: '#category-3', opacity: [1, 0] }
    ]
  }

  # mobile-app

  { # In
    stage: '#frame-mobile-app', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '#mobile-app--video-wall', opacity: opacity.in }
    ]
  }
  { # Hold
    stage: '#frame-mobile-app', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
    ]
  }
  { # Out
    stage: '#frame-mobile-app', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '#mobile-app--video-wall', opacity: opacity.out }
    ]
  }

  # browse-and-collect-fairs

  { # In
    stage: '#frame-browse-and-collect-fairs', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '#image-wall--image-0', opacity: [0, 1] }
      { element: '#image-wall--image-1', opacity: [-0.25, 1] }
      { element: '#image-wall--image-2', opacity: [-0.5, 1] }
      { element: '#image-wall--image-3', opacity: [-0.75, 1] }
    ]
  }
  { # Hold
    stage: '#frame-browse-and-collect-fairs', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
    ]
  }
  { # Out
    stage: '#frame-browse-and-collect-fairs', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '#image-wall--image-0', opacity: [1, -0.75] }
      { element: '#image-wall--image-1', opacity: [1, -0.5] }
      { element: '#image-wall--image-2', opacity: [1, -0.25] }
      { element: '#image-wall--image-3', opacity: [1, 0] }
    ]
  }

  # -------------

  # bringing-together

  { # In
    stage: '#frame-bringing-together', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '.frame--backdrop-credit', opacity: opacity.in }
      { element: '.frame--backdrop', opacity: opacity.in, scale: backdropScale.a }
    ]
  }
  { # Hold
    stage: '#frame-bringing-together', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '.frame--backdrop', scale: backdropScale.b }
    ]
  }
  { # Out
    stage: '#frame-bringing-together', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '.frame--backdrop-credit', opacity: opacity.out }
      { element: '.frame--backdrop', opacity: opacity.out, scale: backdropScale.c }
    ]
  }
]
