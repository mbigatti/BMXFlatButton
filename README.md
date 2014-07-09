# BMXFlatButton

A couple of Swift `UIButton` with a flat appearance, released as a Cocoa Touch Framework. The framework contains two button types: `FlatButton` and `CircularButton`. The first is a squared button with optional rounded corners and border; you can tweak the colors to obtain a filled or outlined style. The circular button is a circle shaped button intended to be used without a title; it also can have a optional border.

## Features

- designable in Interface Builder
- customizable highlighted color (defaults to normal color but 2% darker)
- customizable border size and color
- customizable corner radius (only for `FlatButton`)

![Button example](http://f.cl.ly/items/0i1l2d1o2e1E0r323l2D/BMXFlatButtonExample.png)

For a complete example see the enclosed `BMXFlatButtonTest`project.

## Usage

- Add `BMXFlatButton` framework to project in `Project > General > Linked Frameworks and Libraries`.
- Set *Custom Class* in *Identity Inspector*. Choose `FlatButton` for flat squared buttons or `CircularButton` for circular buttons.

![Identity Inspector](http://f.cl.ly/items/381e1A1g0U2D08420s1q/Schermata%202014-07-05%20alle%2021.49.25.png)

- Configure the button properties as required in *Attribute Inspector*.

![Flat Button - Attribute Inspector](http://f.cl.ly/items/1E0D1r1g02351Y0m1s32/IB1.png)

![Circular Button - Attribute Inspector](http://f.cl.ly/items/213t293C3R2L1W2I0d42/IB2.png)

## Notes
- Xcode 6 beta 3: issue below is fixed but to compile the test project you'll need to apply this [fix](http://stackoverflow.com/questions/24622650/xcode-6-beta-3-invalid-virtual-filesystem-overlay-file).
- Xcode 6 beta 2: due to a Interface Builder limitation, the Custom Class Class field does not show the `FlatButton` and `CircularButton` options in the selection box, you'll need to write them manually.

### Contact
[http://bigatti.it](http://bigatti.it)  
[@mbigatti](https://twitter.com/mbigatti)
