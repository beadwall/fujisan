Feature: Pages

Scenario: Compile simple file
  Given a fixture app "pages"
  When I run "gulp fuji:build"
  Then the following file should exist:
  ---
  build/index.html
  ---
  And the contents of it should be:
  ---
  <html><body><h1>Hello World</h1></body></html>
  ---
