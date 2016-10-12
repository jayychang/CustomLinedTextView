# CustomLinedTextView

A simple custom UITextView subclass library that draws lines and allows line spacing inside a UITextView. Lines will be adjusted accordingly depending on UIFont, FontSize and lineHeight.

## Install

Simply drag and drop the `CustomLinedTextView` folder into your project and import using `#import "CustomLinedTextView.h"`

## Example

![Screenshot](https://github.com/jayychang/CustomLinedTextView/blob/master/CustomLinedTextViewExample/CustomLinedTextViewExample/CustomLinedTextViewExample.png)

#### Set Text Container
```sh
[self.textView setTextContainerInset:UIEdgeInsetsMake(20.0f, 10.0f, 0, 10.0f)];
```    
#### Set Font
```sh
[self.textView setFont:[UIFont fontWithName:@"Times New Roman" size:30]];
```
#### Set Font and Cursor Color
```sh
[self.textView setTextColor:[UIColor blueColor]];
```
#### Set Line Spacing / Line Height
```sh
[self.textView setLineSpacing:20];
```
#### Set Line Color
```sh
[self.textView setLineColor:[UIColor redColor]];
```
#### Set Background Color
```sh
[self.textView setBackgroundColor:[UIColor colorWithRed:247.0/255.0 green:251.0/255.0 blue:251.0/255.0 alpha:1.0]];
```

## License
```
MIT License

Copyright (c) 2016 jayychang

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
