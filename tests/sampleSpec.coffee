Sample = require '../src/sample.coffee'

describe 'Sample for Emblem Loader', ->
  it 'should return rendered template', ->
    sample = new Sample()
    renderedTemplate = sample.run()
    expect(renderedTemplate).to.equal('<p class="sample-class">Sample Emblem Template</p>')


