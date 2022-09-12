component {
  this.name = "cfm_datatables";
  this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0); //10 days
  // this.datasource = "cfbookclub";
  this.datasource = "portalsettingsP";
  this.sessionManagement = true;
  this.sessionTimeout = CreateTimeSpan(0, 0, 30, 0); //30 minutes

  function onApplicationStart() {
      return true;
  }

  function onSessionStart() {}

  function onRequestStart( string targetPage ) {}

  function onRequest( string targetPage ) {
    request.applicationTitle = "CFM Datatables";
    include arguments.targetPage;    
  }

  function onRequestEnd() {}

  function onSessionEnd( struct SessionScope, struct ApplicationScope ) {}

  function onApplicationEnd( struct ApplicationScope ) {}

  function onError( any Exception, string EventName ) {}

}