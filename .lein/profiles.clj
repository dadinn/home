{:user
 {:plugins
  [[cider/cider-nrepl "0.21.0"]
   [com.billpiel/sayid "0.0.17"]
   [lein-bin "0.3.5"]
   [lein-ring "0.12.4"]
   [lein-ancient "0.6.15"]
   [com.jakemccrary/lein-test-refresh "0.23.0"]]
  :middleware
  [cider-nrepl.plugin/middleware
   sayid.plugin/middleware]}
 :uberjar
 {:aot :all
  :pedantic? :abort}}
