// The DashboardComponent is the root component
// every other components gets injected to it or to subcomponents of it
var DashboardComponent = function() {
};

DashboardComponent.annotations = [
  new ng.ComponentAnnotation({
    selector: 'dashboard'
  }),

  new ng.ViewAnnotation({
    templateUrl: 'components/dashboard'
  })
];

document.addEventListener('DOMContentLoaded', function() {
  ng.bootstrap(DashboardComponent);
});
