# Hippo Web Component Plugin

[![Greenkeeper badge](https://badges.greenkeeper.io/salte-io/hippo-web-component.svg)](https://greenkeeper.io/)

[![Travis][https://img.shields.io/travis/com/salte-io/hippo-web-component/master.svg?style=flat]][https://travis-ci.com/salte-io/hippo-web-component]

## Overview
The Hippo Web Component Plugin allows you to include externally hosted W3C web components in your Hippo CMS implementation.

## Installation Instructions
### Add Dependency
Add the following dependency to the POM file of the Essentials web application associated with your Hippo project.
```xml
  <dependency>
    <groupId>io.salte</groupId>
    <artifactId>hippo-web-component</artifactId>
    <version>1.0.0</version>
    <type>jar</type>
  </dependency>
```
For more information on creating a project from the Hippo Maven Archetype, including the Essentials web application, visit [Getting Started](https://www.onehippo.org/12/trails/getting-started/hippo-essentials-getting-started.html).
### Install Plugin via Essentials
1. Open a terminal and run "mvn -Pcargo.run -Drepo.path=storage" from the root directory of your Hippo project to launch the project with the Cargo plugin.
2. Open your web browser and navigate to http://localhost:8080/essentials.
3. Go to the "Library" tab, scroll to the bottom, and click the "Install" button next to the "Web Component" library.
4. Stop your Hippo project by returning to the terminal and stopping the application server launched in step 1.
5. Run "mvn verify" from the terminal to rebuild the project.
6. Run "mvn -Pcargo.run -Drepo.path=storage" from the terminal to relaunch the project.
7. Once the application server is up and running and you have seen a number of messages indicating the files have been copied you can stop the server again.
8. Run "mvn verify" from the terminal to rebuild the project one more time.
9. Run "mvn -Pcargo.run -Drepo.path=storage" from the terminal to relaunch the project.

Your plugin should be installed and available for use within the CMS application's Channel Editor.

## Steps to Use
The following steps assume that the plugin has been installed and your Hippo project is up in running.

1. Open your web browser and navigate to http://localhost:8080/cms.
2. Login and click on the "Channels" tab.
3. Select the channel you want to work with.
4. Click the arrow towards the top left to open up the left sidebar.
5. Select the page you want to work with.
6. Select the small icon that looks like a cluster of blocks in the upper right corner to display the "Components" palette in the left sidebar.
7. Click the "Components" tab on the left sidebar and scroll down until you find the "Web Component" widget.
8. Click the "Web Component" widget to select it and then click the location on the page where you want it to appear.
9. Once the component is placed, a dialog box will open and prompt you to enter the URL and element name of the element to be inserted into the page.

For example:
- URL: https://myserver/saltelogincomponent.html
- Element Name: salte-login

## License
The Apache 2.0 License

Copyright 2017 Salte https://www.salte.io

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
