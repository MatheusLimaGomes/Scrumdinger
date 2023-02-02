# Srumdinger

## A SwiftUI App with native components from Apple design.

 The Stages of development will be registered in commit tree and in this file, i'll detail my learning and challenges from follow the tutorial from Apple Developer.
> To know more you can read this [Article](https://developer.apple.com/tutorials/app-dev-training/).

## To transfer data into screens

Managing data objects across systems is often a common challenge for developers on all platforms, multiple copies receiving and changing information and data state as well as sharing updates, introducing inconsistencies and bugs. To avoid this path, we'll use the Source of Truth approach, more specifically Swift property wrappers.

### Swift property wrappers a brief summary.

> In swift a property wrappers encapsulates a common property incialization pattern, making it easier you add behaviours to your properties. SwiftUI uses the @State and @Binding property weappers, among others to help you maintain a single source of thruth. It is important to consider that the @State and @Binding properties only work for value types. As follow we'll knows about the value property wrapper and the reference property wapper.

### About Value Types Property wrappers
#### @State
When we named properties with @State, we defining this property as Source of truth within your view. This means that the system must identify all elements of a view that depend on the value of the @State property. 
User interactions might change your @State property. The system renders a new version of the UI by updating any views that depend on that property. [Read More](https://developer.apple.com/tutorials/app-dev-training/managing-data-flow-between-views#:~:text=for%20your%20data.-,State,-When%20you%20declare)

![Alt text](https://docs-assets.developer.apple.com/published/4d41103ac03035430535abe131f62030/SUI_045-010~dark@2x.png "@State Data flow")

#### @Binding 

When we wrap a property with @Binding it means this property depends of the data from a @State property. Them this property is not the source of truth and should be updated if the @State property are modified. An important info is about the store data, a @Binding doesn't store the data directly. Instead, it creates a two-way connection between an existing source of thruth and a view that displays and updates the data. This connection ensures that multiple views associated with a piece of data are in sync. [Read More](https://developer.apple.com/tutorials/app-dev-training/managing-data-flow-between-views#:~:text=the%20view%20hierarchy%3F-,Binding,-A%20property%20that)

![Alt text](https://docs-assets.developer.apple.com/published/7a0a8c072a8e53cb394f3a4ca713918d/SUI_045-020~dark@2x.png "@Binding Data flow")

### About Reference Types Property wrappers

We've the **@ObservedObject, @StateObject and EnvironmentObject**, to use thes property wrappers with your class, you need to make your class observable.