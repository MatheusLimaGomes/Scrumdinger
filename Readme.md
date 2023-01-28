# Srumdinger

## A SwiftUI App with native components from Apple design.

 The Stages of development will be registered in commit tree and in this file, i'll detail my learning and challenges from follow the tutorial from Apple Developer.
> To know more you can read this [Article](https://developer.apple.com/tutorials/app-dev-training/).

## To transfer data into screens

Managing data objects across systems is often a common challenge for developers on all platforms, multiple copies receiving and changing information and data state as well as sharing updates, introducing inconsistencies and bugs. To avoid this path, we'll use the Source of Truth approach, more specifically Swift property wrappers.

### Swift property wrappers a brief summary.

> In swift a property wrappers encapsulates a common property incialization pattern, making it easier you add behaviours to your properties. SwiftUI uses the @State and @Bindin property weappers, among others to help you maintain a single source of thruth.

#### About State

When we named properties with @State, we defining this property as Source of truth within your view. This means that the system must identify all elements of a view that depend on the value of the @State property. 
User interactions might change your @State property. The system renders a new version of the UI by updating any views that depend on that property. [See More](https://developer.apple.com/tutorials/app-dev-training/managing-data-flow-between-views#:~:text=for%20your%20data.-,State,-When%20you%20declare)

![Alt text](https://docs-assets.developer.apple.com/published/4d41103ac03035430535abe131f62030/SUI_045-010~dark@2x.png "@State Data flow")
