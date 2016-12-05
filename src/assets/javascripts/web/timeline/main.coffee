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

  # mobile-app

  { # In
    stage: '#frame-mobile-app', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '.frame--backdrop-credit', opacity: opacity.in }
      { element: '.frame--backdrop', opacity: opacity.in, scale: backdropScale.a }
    ]
  }
  { # Hold
    stage: '#frame-mobile-app', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '.frame--backdrop', scale: backdropScale.b }
    ]
  }
  { # Out
    stage: '#frame-mobile-app', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '.frame--backdrop-credit', opacity: opacity.out }
      { element: '.frame--backdrop', opacity: opacity.out, scale: backdropScale.c }
    ]
  }
  # browse-and-collect-fairs

  { # In
    stage: '#frame-browse-and-collect-fairs', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '.frame--backdrop-credit', opacity: opacity.in }
      { element: '.frame--backdrop', opacity: opacity.in, scale: backdropScale.a }
    ]
  }
  { # Hold
    stage: '#frame-browse-and-collect-fairs', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '.frame--backdrop', scale: backdropScale.b }
    ]
  }
  { # Out
    stage: '#frame-browse-and-collect-fairs', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '.frame--backdrop-credit', opacity: opacity.out }
      { element: '.frame--backdrop', opacity: opacity.out, scale: backdropScale.c }
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

  # -------------

  # bringing-together2

  { # In
    stage: '#frame-bringing-together2', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '.frame--backdrop-credit', opacity: opacity.in }
      { element: '.frame--backdrop', opacity: opacity.in, scale: backdropScale.a }
    ]
  }
  { # Hold
    stage: '#frame-bringing-together2', duration: '100%', easing: 'linear', key: true
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '.frame--backdrop', scale: backdropScale.b }
    ]
  }
  { # Out
    stage: '#frame-bringing-together2', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '.frame--backdrop-credit', opacity: opacity.out }
      { element: '.frame--backdrop', opacity: opacity.out, scale: backdropScale.c }
    ]
  }
]
