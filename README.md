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
+ (UITableView *)tableViewWithFrame:(CGRect)frame
                         dataSource:(id)dataSource
                           delegate:(id)delegate;

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                              style:(UITableViewStyle)style
                         dataSource:(id)dataSource
                           delegate:(id)delegate;

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                    backgroundColor:(UIColor *)backgroundColor
                         dataSource:(id)dataSource
                           delegate:(id)delegate;

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                              style:(UITableViewStyle)style
                    backgroundColor:(UIColor *)backgroundColor
                         dataSource:(id)dataSource
                           delegate:(id)delegate;

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                              style:(UITableViewStyle)style
                     separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle
               alwaysBounceVertical:(BOOL)alwaysBounceVertical
                      scrollEnabled:(BOOL)scrollEnabled
                    backgroundColor:(UIColor *)backgroundColor
                         dataSource:(id)dataSource
                           delegate:(id)delegate;

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                              style:(UITableViewStyle)style
                     separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle
               alwaysBounceVertical:(BOOL)alwaysBounceVertical
                      scrollEnabled:(BOOL)scrollEnabled
                    backgroundColor:(UIColor *)backgroundColor
                         dataSource:(id)dataSource
                           delegate:(id)delegate
             userInteractionEnabled:(BOOL)userInteractionEnabled;

/**
 *@description 去掉UITableview底部多余的线
 *@return void
 */
- (void)setTableviewExtraCellLineHidden;

/**
 *@description 刷新特定的NSIndexPath 所对应的 UITableviewCell
 *@return void
 */
- (void)refreshTableviewCellWithIndexPath:(NSIndexPath *) path;

/**
 *@description 刷新特定的NSIndexPath 所对应的 UITableviewCell(可设置动画)
 *@return void
 */
- (void)refreshTableviewCellWithIndexPath:(NSIndexPath *)path
                             rowAnimation:(UITableViewRowAnimation)rowAnimation;

/**
 *@description 刷新特定的NSIndexPath数组 所对应的 UITableviewCell组
 *@return void
 */
- (void)refreshTableviewCellWithIndexPathArray:(NSMutableArray *)indexPathArray;

/**
 *@description 刷新特定的NSIndexPath数组 所对应的 UITableviewCell组(可设置动画)
 *@return void
 */
- (void)refreshTableviewCellWithIndexPathArray:(NSMutableArray *)indexPathArray
                              rowAnimation:(UITableViewRowAnimation)rowAnimation;
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
+ (UIView *)viewWithFrame:(CGRect)frame
          backgroundColor:(UIColor *)backgroundColor;
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
#pragma mark - Line Height
- (void)setLineSpace:(float)lineSpace
                text:(NSString *)text;

#pragma mark - Init
+ (UILabel *)labelWithFrame:(CGRect)frame
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor;

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor;

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor
            backgroundColor:(UIColor *)backgroundColor;

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor
              textAlignment:(NSTextAlignment)textAlignment;

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor
            backgroundColor:(UIColor *)backgroundColor
              textAlignment:(NSTextAlignment)textAlignment;
```
## UIButton+JMExtension.h
```OC
#pragma mark - Init Button
+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        title:(NSString *)title
                    titleFont:(UIFont *)titleFont
                   titleColor:(UIColor *)titleColor;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        title:(NSString *)title
                    titleFont:(UIFont *)titleFont
                   titleColor:(UIColor *)titleColor
                       target:(id)target
                     selector:(SEL)selector;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        title:(NSString *)title
                    titleFont:(UIFont *)titleFont
                   titleColor:(UIColor *)titleColor
                lineBreakMode:(NSLineBreakMode)lineBreakMode
              backgroundColor:(UIColor *)backgroundColor
                textAlignment:(NSTextAlignment)textAlignment
                  contentMode:(UIViewContentMode)contentMode;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        title:(NSString *)title
                    titleFont:(UIFont *)titleFont
                   titleColor:(UIColor *)titleColor
                lineBreakMode:(NSLineBreakMode)lineBreakMode
              backgroundColor:(UIColor *)backgroundColor
                textAlignment:(NSTextAlignment)textAlignment
                  contentMode:(UIViewContentMode)contentMode
                       target:(id)target
                     selector:(SEL)selector;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        image:(UIImage *)image;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        image:(UIImage *)image
                       target:(id)target
                     selector:(SEL)selector;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        image:(UIImage *)image
              backgroundColor:(UIColor *)backgroundColor
                  contentMode:(UIViewContentMode)contentMode
            contentEdgeInsets:(UIEdgeInsets)edgeInsets;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        image:(UIImage *)image
              backgroundColor:(UIColor *)backgroundColor
                  contentMode:(UIViewContentMode)contentMode
            contentEdgeInsets:(UIEdgeInsets)edgeInsets
                       target:(id)target
                     selector:(SEL)selector;

#pragma mark - Init ImageButton
+ (UIButton *)getImageBtnWithType:(UIButtonType)btnType
                     titleBtnType:(CImageTitleBtnType)imageTitleBtnType
                            title:(NSString *)title
                        imageName:(NSString *)imageName
                        titleFont:(UIFont *)titleFont
                       titleColor:(UIColor *)titleColor;

+ (UIButton *)getImageBtnWithWithType:(UIButtonType)btnType
                         titleBtnType:(CImageTitleBtnType)imageTitleBtnType
                                title:(NSString *)title
                            titleFont:(UIFont *)textFont
                  unSelectedImageName:(NSString *)unSelectedImageName
                    selectedImageName:(NSString *)selectedImageName
                  unSelectedTextColor:(UIColor *)unSelectedColor
                    selectedTextColor:(UIColor *)selectedColor;
```
## 持续更新中......

## 作者
James.xiao
