{:user
 {:plugins
  [[cider/cider-nrepl "0.28.5"]
   [com.billpiel/sayid "0.1.0"]
   [lein-binplus "0.6.5"]
   [lein-ring "0.12.4"]
   [lein-auto "0.1.3"]
   [lein-ancient "0.6.15"]
   [com.jakemccrary/lein-test-refresh "0.23.0"]]
  :middleware
  [cider-nrepl.plugin/middleware
   sayid.plugin/middleware]}
 :uberjar
 {:aot :all
  :pedantic? :abort}}
