-- Supported attributes
--NSString * const kHRCSSDirection = @"flex-direction";
--NSString * const kHRCSSDirectionRow = @"row";
--NSString * const kHRCSSDirectionRowReverse = @"row-reverse";
--NSString * const kHRCSSDirectionColumn = @"column";
--NSString * const kHRCSSDirectionColumnReverse = @"column-reverse";
--
--NSString * const kHRCSSAlignItems = @"align-items";
--NSString * const kHRCSSAlignContent = @"align-content";
--NSString * const kHRCSSAlignSelf = @"align-self";
--NSString * const kHRCSSAlignAuto = @"auto";
--NSString * const kHRCSSAlignStart = @"flex-start";
--NSString * const kHRCSSAlignCenter = @"center";
--NSString * const kHRCSSAlignEnd = @"flex-end";
--NSString * const kHRCSSAlignStretch = @"stretch";
--
--NSString * const kHRCSSJustification = @"justify-content";
--NSString * const kHRCSSJustificationStart = @"flex-start";
--NSString * const kHRCSSJustificationCenter = @"center";
--NSString * const kHRCSSJustificationEnd = @"flex-end";
--NSString * const kHRCSSJustificationBetween = @"space-between";
--NSString * const kHRCSSJustificationAround = @"space-around";
--
--NSString * const kHRCSSFlex = @"flex";
--NSString * const kHRCSSFlexWrap = @"flex-wrap";
--
--NSString * const kHRCSSDimensionWidth = @"width";
--NSString * const kHRCSSDimensionHeight = @"height";
--
--NSString * const kHRCSSMinDimensionWidth = @"min-width";
--NSString * const kHRCSSMinDimensionHeight = @"min-height";
--
--NSString * const kHRCSSMaxDimensionWidth = @"max-width";
--NSString * const kHRCSSMaxDimensionHeight = @"max-height";
--
--NSString * const kHRCSSMargin = @"margin";
--NSString * const kHRCSSMarginLeft = @"margin-left";
--NSString * const kHRCSSMarginTop = @"margin-top";
--NSString * const kHRCSSMarginBottom = @"margin-bottom";
--NSString * const kHRCSSMarginRight = @"margin-right";
--
--NSString * const kHRCSSPadding = @"padding";
--NSString * const kHRCSSPaddingLeft = @"padding-left";
--NSString * const kHRCSSPaddingTop = @"padding-top";
--NSString * const kHRCSSPaddingBottom = @"padding-bottom";
--NSString * const kHRCSSPaddingRight = @"padding-right";

LIGHT_GRAY = 0xF3FCFE
RED_COLOR = 0xf61d4b
BLUE_COLOR = 0x26a96d
GREEN_COLOR = 0x05A5D1

w,h = System.screenSize()

contentView = View()
contentView.frame(0, 0, w, 400)
contentView.backgroundColor(LIGHT_GRAY)

childCSSString = "flex: 1, margin: 5"

view1 = View()
view1.backgroundColor(RED_COLOR)
view1.flxBindingCSS(childCSSString)

view2 = View()
view2.backgroundColor(BLUE_COLOR)

view3 = View()
view3.backgroundColor(RED_COLOR)
view3.flxBindingCSS("flex: 1")

view4 = View()
view4.backgroundColor(GREEN_COLOR)
view4.flxBindingCSS("flex: 3")

view5 = View()
view5.backgroundColor(RED_COLOR)
view5.flxBindingCSS("width: 40, height: 40, margin-left: 10, align-self: center")

view6 = View()
view6.backgroundColor(0x00)
view6.flxBindingCSS("width: 50, height: 50, position: absolute, left: 5, top: 5")

image = Image()
image.image("http://img4.tbcdn.cn/L1/461/1/img_20151116194256.JPEG_240x240")
image.flxBindingCSS("width: 40, height: 40, align-self: flex-start")

view2.flxChildViews(view3, view4, image, view5, view6)
view2.flxBindingCSS("flex: 2, padding: 10.0, flex-direction: row, align-items: stretch")

label = Label()
label.backgroundColor(GREEN_COLOR)
label.text("The Réunion parrot or Dubois's parrot (Necropsittacus borbonicus) is a hypothetical extinct species of parrot based on descriptions of birds from the Mascarene island of Réunion. Its existence has been inferred from the travel report of Dubois in 1674 who described it as having a Body the size of a large pigeon, green; head, tail and upper part of wings the colour of fire. No remains have been found of this supposed species, and its existence seems doubtful.")
label.lineCount(0)
label.flxBindingCSS("sizetofit: 1, align-self:center, margin: 20")

contentView.flxChildViews(view1, view2, label);
contentView.flxBindingCSS("flex-direction: column");
contentView.flxLayout(true, function()
    print("cccc");
end);

view2.callback(function()
    view3.flxBindingCSS("flex: 2")
    view4.flxBindingCSS("flex: 1")

    contentView.flxLayout()
end)