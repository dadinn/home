{:user
 {:plugins
  [[cider/cider-nrepl "0.18.0"]
   [com.billpiel/sayid "0.0.17"]
   [lein-bin "0.3.5"]
   [lein-ring "0.12.4"]
   [lein-ancient "0.6.15"]
   [com.jakemccrary/lein-test-refresh "0.23.0"]]}
 :dev
 {:dependencies
  [[org.clojure/test.check "0.9.0"]
   [org.clojure/tools.nrepl "0.2.13"]
   ;; utils
   [cheshire "5.8.0"]
   [clj-time "0.14.4"]
   [clojurewerkz/money "1.10.0"]
   [com.taoensso/timbre "4.10.0"]
   [com.stuartsierra/component "0.3.2"]]}
 :uberjar
 {:aot :all}}

