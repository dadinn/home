{:user
 {:plugins
  [[cider/cider-nrepl "0.25.3"]
   [com.billpiel/sayid "0.1.0"]
   [lein-binplus "0.6.5"]
   [lein-ring "0.12.4"]
   [lein-ancient "0.6.15"]
   [com.jakemccrary/lein-test-refresh "0.23.0"]]
  :middleware
  [cider-nrepl.plugin/middleware
   sayid.plugin/middleware]}
 :uberjar
 {:aot :all
  :pedantic? :abort}}
