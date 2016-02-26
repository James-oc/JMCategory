# JMCategory
### 整理了常用的一些oc拓展类
---

## NSDictionary+JMExtension.h
```OC
/**
 *@description NSData转NSDictionary
 *@return void
 */
+ (NSDictionary *)dictionaryWithContentsOfData:(NSData *)data;
```
## CALayer+Layout.h
```OC
/**
 *@description 快速获取CALayer Layout值
 */
@property (assign, nonatomic) CGFloat frameX;
@property (assign, nonatomic) CGFloat frameY;
@property (assign, nonatomic) CGFloat frameWidth;
@property (assign, nonatomic) CGFloat frameHeight;
@property (assign, nonatomic) CGFloat centerX;
@property (assign, nonatomic) CGFloat centerY;
@property (assign, nonatomic) CGSize  frameSize;

@property (assign, nonatomic) CGFloat top;
@property (assign, nonatomic) CGFloat bottom;
@property (assign, nonatomic) CGFloat right;
@property (assign, nonatomic) CGFloat left;
```
## UITableView+JMExtension.h
```OC
/**
 *@description 去掉UITableview底部多余的线
 *@return      void
 */
- (void)setTableviewExtraCellLineHidden;

/**
 *@description 刷新特定的NSIndexPath 所对应的 UITableviewCell
 *@return      void
 */
- (void)refreshTableviewCellWithIndexPath:(NSIndexPath *) path;

/**
 *@description 刷新特定的NSIndexPath数组 所对应的 UITableviewCell组
 *@return      void
 */
- (void)refreshTableviewCellWithIndexPathArray:(NSMutableArray *) indexPathArray;
```
## UITableViewCell+JMExtension.h
```OC
/**
 *@description 获取当前cell的父view
 *@return      UIView
 */
- (UIView *)getSuperview;
```
## UIColor+JMExtension.h
```OC
/**
 *@description 传递RGB值获取颜色
 *@params      stringToConvert
 *@return      UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;
```
## UIView+JMExtension.h
```OC
/**
 *@description  获取当前view的Controller
 *@return       UIViewController
 */
- (UIViewController *)getViewController;

/**
 *@description 获取UIView对象
 *@params      frame
 *@params      bgColor
 *@return      UIView
 */
+ (UIView *)viewWithFrame:(CGRect) frame
      withBackgroundColor:(UIColor *) bgColor;
```
## UIView+Layout.h
```OC
/**
 *@description 快速获取UIView Layout值
 */
@property (assign, nonatomic) CGFloat frameX;
@property (assign, nonatomic) CGFloat frameY;
@property (assign, nonatomic) CGFloat frameWidth;
@property (assign, nonatomic) CGFloat frameHeight;
@property (assign, nonatomic) CGFloat centerX;
@property (assign, nonatomic) CGFloat centerY;
@property (assign, nonatomic) CGSize  frameSize;

@property (assign, nonatomic) CGFloat top;
@property (assign, nonatomic) CGFloat bottom;
@property (assign, nonatomic) CGFloat right;
@property (assign, nonatomic) CGFloat left;
```
## UILabel+JMExtension.h
```OC
/**
 *@description  获取UILabel对象
 *@params       rect
 *@params       fontSize
 *@params       textColor
 *@return       UILabel
 */
+ (UILabel *)labelWithRect:(CGRect)     rect
                  withFont:(float)      fontSize
             withTextColor:(NSString *) textColor;

/**
 *@description  获取UILabel对象
 *@params       rect
 *@params       fontSize
 *@params       textColor
 *@params       bgColor
 *@return       UILabel
 */
+ (UILabel *)labelWithRect:(CGRect)     rect
                  withFont:(float)      fontSize
             withTextColor:(NSString *) textColor
       withBackgroundColor:(NSString *) bgColor;

/**
 *@description  获取UILabel对象
 *@params       rect
 *@params       textColor
 *@params       font
 *@params       text
 *@params       textAlignment
 *@return       UILabel
 */
+ (UILabel *)labelWithRect:(CGRect)             rect
             withTextColor:(UIColor *)          textColor
                  withFont:(UIFont *)           font
                  withText:(NSString *)         text
         withTextAlignment:(NSTextAlignment)    textAlignment;
```
## UIButton+JMExtension.h
```OC
/**
 *@description  获取UIButtonTypeCustom样式的UIButton对象
 *@params       rect
 *@params       imageName
 *@params       highlighted
 *@params       target
 *@params       action
 *@return       UIButton
 */
+ (UIButton *)customBtnWithRect:(CGRect)        rect
                  withImageName:(NSString *)    imageName
               highlightedImage:(NSString *)    highlighted
                      addTarget:(id)            target
                         action:(SEL)           action;

/**
 *@description  获取UIButton对象
 *@params       rect
 *@params       btnType
 *@params       titleColor
 *@params       titleFont
 *@params       title
 *@params       lineBreakMode
 *@return       UIButton
 */
+(UIButton *) buttonWithRect:(CGRect)           rect
              withButtonType:(UIButtonType)     btnType
              withTitleColor:(UIColor *)        titleColor
               withTitleFont:(UIFont *)         titleFont
                   withTitle:(NSString *)       title
           withLineBreakMode:(NSLineBreakMode)  lineBreakMode;

/**
 *@description  获取带图片UIButton对象
 *@params       title
 *@params       imageName
 *@params       textFont
 *@params       textColor
 *@params       btnType
 *@params       imageTitleBtnType
 *@return       UIButton
 */
+(UIButton *) getImageBtnWithTitle:(NSString *)         title
                     withImageName:(NSString *)         imageName
                          withFont:(UIFont *)           textFont
                     withTextColor:(UIColor *)          textColor
                       withBtnType:(UIButtonType)       btnType
             withImageTitleBtnType:(CImageTitleBtnType) imageTitleBtnType;

/**
 *@description  获取带图片UIButton对象
 *@params       imageTitleBtnType
 *@params       title
 *@params       unSelectedImageName
 *@params       selectedImageName
 *@params       unSelectedColor
 *@params       selectedColor
 *@params       textFont
 *@params       btnType
 *@return       UIButton
 */
+(UIButton *) getImageBtnWithImageTitleBtnType:(CImageTitleBtnType) imageTitleBtnType
                                         title:(NSString *)         title
                           unSelectedImageName:(NSString *)         unSelectedImageName
                             selectedImageName:(NSString *)         selectedImageName
                           unSelectedTextColor:(UIColor *)          unSelectedColor
                             selectedTextColor:(UIColor *)          selectedColor
                                  withTextFont:(UIFont *)           textFont
                                   withBtnType:(UIButtonType)       btnType;
```
## 持续更新中......

## 作者
James.xiao
