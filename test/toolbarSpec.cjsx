expect = require 'expect.js'
React = require 'react'
ReactTestUtils = require 'react/lib/ReactTestUtils'
ReactDOM = require 'react-dom'
Toolbar= require '../src/toolbar.cjsx'

describe 'toolbar', () ->

  it 'Should create default element', () ->
    instance = ReactTestUtils.renderIntoDocument <Toolbar />
    toolbar = ReactDOM.findDOMNode instance
    expect(toolbar.nodeName).to.be('DIV')

    classNames = toolbar.className.split(' ')
    expect(classNames).to.contain('toolbar');
    expect(classNames).to.contain('toolbar-header');


  it 'Should create toolbar(header) element', () ->
    instance = ReactTestUtils.renderIntoDocument <Toolbar type='header' />
    toolbar = ReactDOM.findDOMNode instance
    expect(toolbar.nodeName).to.be('DIV')

    classNames = toolbar.className.split(' ')
    expect(classNames).to.contain('toolbar');
    expect(classNames).to.contain('toolbar-header');


  it 'Should create toolbar(footer) element', () ->
    instance = ReactTestUtils.renderIntoDocument <Toolbar type='footer' />
    toolbar = ReactDOM.findDOMNode instance
    expect(toolbar.nodeName).to.be('DIV')

    classNames = toolbar.className.split(' ')
    expect(classNames).to.contain('toolbar');
    expect(classNames).to.contain('toolbar-footer');
