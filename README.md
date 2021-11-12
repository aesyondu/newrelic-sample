# newrelic-sample

demonstrate issue w.r.t. ignored controller actions showing up on distributed tracing

## steps
1. `vim config/newrelic.yml`
2. input license key
3. `bin/rails s`
4. `curl localhost:3000 # ignored route`
5. `curl localhost:3000/trace_enabled`
6. see in dashboard that the ignored route shows up in distributed tracing as **Controller/Middleware/Rack/ActionDispatch::Routing::RouteSet/call**, along with the trace_enabled route as HealthCheckController#show
