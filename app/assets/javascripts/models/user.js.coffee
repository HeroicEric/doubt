attr = DS.attr

App.User = DS.Model.extend
  firstName: attr()
  lastName: attr()
  username: attr()
