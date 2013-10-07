//= require application
//= require_tree .
//= require_self

document.write('<div id="ember-testing-container"><div id="ember-testing">' +
    '</div></div>');
document.write('<style>#ember-testing-container { position: absolute; ' +
    'background: white; bottom: 0; right: 0; width: 640px; height: 384px; ' +
    'overflow: auto; z-index: 9999; border: 1px solid #ccc; } ' +
    '#ember-testing { zoom: 50%; }</style>');

App.rootElement = '#ember-testing';
App.ApplicationAdapter = DS.FixtureAdapter.extend();
App.setupForTesting();
App.injectTestHelpers();

// Helpers

// Expectations
function exists(selector) {
  return !!find(selector).length;
}

function hasContent(content) {
  return !!find('*:contains(' + content + ')').length;
}

// Authentication Helper
window.preload = {}

function createUser() {
  user = {
    id: 1,
    firstName: 'Eric',
    lastName: 'Kelly',
    username: 'HeroicEric'
  }

  return user;
}

function preloadCurrentUser(user) {
  if (user === undefined) user = createUser();
  window.preload.currentUser = user
}
