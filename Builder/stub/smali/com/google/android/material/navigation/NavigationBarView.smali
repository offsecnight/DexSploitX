.class public abstract Lcom/google/android/material/navigation/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;,
        Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;,
        Lcom/google/android/material/navigation/NavigationBarView$SavedState;,
        Lcom/google/android/material/navigation/NavigationBarView$ItemIconGravity;,
        Lcom/google/android/material/navigation/NavigationBarView$ItemGravity;,
        Lcom/google/android/material/navigation/NavigationBarView$LabelVisibility;
    }
.end annotation


# static fields
.field public static final ACTIVE_INDICATOR_WIDTH_MATCH_PARENT:I = -0x1

.field public static final ACTIVE_INDICATOR_WIDTH_WRAP_CONTENT:I = -0x2

.field public static final ITEM_GRAVITY_CENTER:I = 0x11

.field public static final ITEM_GRAVITY_START_CENTER:I = 0x800013

.field public static final ITEM_GRAVITY_TOP_CENTER:I = 0x31

.field public static final ITEM_ICON_GRAVITY_START:I = 0x1

.field public static final ITEM_ICON_GRAVITY_TOP:I = 0x0

.field public static final LABEL_VISIBILITY_AUTO:I = -0x1

.field public static final LABEL_VISIBILITY_LABELED:I = 0x1

.field public static final LABEL_VISIBILITY_SELECTED:I = 0x0

.field public static final LABEL_VISIBILITY_UNLABELED:I = 0x2

.field private static final MENU_PRESENTER_ID:I = 0x1


# instance fields
.field private final menu:Lcom/google/android/material/navigation/NavigationBarMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

.field private final presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

.field private reselectedListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;

.field private selectedListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 187
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    new-instance p1, Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-direct {p1}, Lcom/google/android/material/navigation/NavigationBarPresenter;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 190
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 193
    sget-object v2, Lcom/google/android/material/R$styleable;->NavigationBarView:[I

    sget v1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceInactive:I

    sget v3, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceActive:I

    filled-new-array {v1, v3}, [I

    move-result-object v5

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 194
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 204
    new-instance p3, Lcom/google/android/material/navigation/NavigationBarMenu;

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMaxItemCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->isSubMenuSupported()Z

    move-result v5

    invoke-direct {p3, v0, p4, v2, v5}, Lcom/google/android/material/navigation/NavigationBarMenu;-><init>(Landroid/content/Context;Ljava/lang/Class;IZ)V

    iput-object p3, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    .line 208
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarView;->createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 209
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-virtual {p4, v2}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setMinimumHeight(I)V

    .line 210
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getCollapsedMaxItemCount()I

    move-result v2

    invoke-virtual {p4, v2}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setCollapsedMaxItemCount(I)V

    .line 212
    invoke-virtual {p1, p4}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setMenuView(Lcom/google/android/material/navigation/NavigationBarMenuView;)V

    const/4 v2, 0x1

    .line 213
    invoke-virtual {p1, v2}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setId(I)V

    .line 214
    invoke-virtual {p4, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setPresenter(Lcom/google/android/material/navigation/NavigationBarPresenter;)V

    .line 215
    invoke-virtual {p3, p1}, Lcom/google/android/material/navigation/NavigationBarMenu;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1, v5, p3}, Lcom/google/android/material/navigation/NavigationBarPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 218
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemIconTint:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemIconTint:I

    .line 220
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 219
    invoke-virtual {p4, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const p1, 0x1010038

    .line 223
    invoke-virtual {p4, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 222
    invoke-virtual {p4, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 226
    :goto_0
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemIconSize:I

    .line 229
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->mtrl_navigation_bar_item_default_icon_size:I

    .line 230
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 227
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 226
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemIconSize(I)V

    .line 232
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceInactive:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 233
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceInactive:I

    .line 234
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    .line 233
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemTextAppearanceInactive(I)V

    .line 237
    :cond_1
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceActive:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 238
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceActive:I

    .line 239
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    .line 238
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemTextAppearanceActive(I)V

    .line 242
    :cond_2
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_horizontalItemTextAppearanceInactive:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 243
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_horizontalItemTextAppearanceInactive:I

    .line 244
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    .line 243
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setHorizontalItemTextAppearanceInactive(I)V

    .line 247
    :cond_3
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_horizontalItemTextAppearanceActive:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 248
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_horizontalItemTextAppearanceActive:I

    .line 249
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    .line 248
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setHorizontalItemTextAppearanceActive(I)V

    .line 252
    :cond_4
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceActiveBoldEnabled:I

    .line 253
    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 254
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemTextAppearanceActiveBoldEnabled(Z)V

    .line 256
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextColor:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 257
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextColor:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 261
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 262
    invoke-static {p1}, Lcom/google/android/material/drawable/DrawableUtils;->getColorStateListOrNull(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz p1, :cond_6

    if-eqz v6, :cond_8

    .line 266
    :cond_6
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    .line 267
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    if-eqz v6, :cond_7

    .line 270
    invoke-virtual {v1, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 272
    :cond_7
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 273
    invoke-virtual {p0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :cond_8
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemPaddingTop:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 277
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemPaddingTop:I

    .line 278
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 277
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemPaddingTop(I)V

    .line 281
    :cond_9
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemPaddingBottom:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 282
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemPaddingBottom:I

    .line 283
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemPaddingBottom(I)V

    .line 286
    :cond_a
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_activeIndicatorLabelPadding:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 287
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_activeIndicatorLabelPadding:I

    .line 288
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 287
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setActiveIndicatorLabelPadding(I)V

    .line 291
    :cond_b
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_iconLabelHorizontalSpacing:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 292
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_iconLabelHorizontalSpacing:I

    .line 293
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 292
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setIconLabelHorizontalSpacing(I)V

    .line 296
    :cond_c
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_elevation:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 297
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_elevation:I

    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setElevation(F)V

    .line 300
    :cond_d
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_backgroundTint:I

    .line 301
    invoke-static {v0, p2, p1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 303
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 305
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_labelVisibilityMode:I

    const/4 v1, -0x1

    .line 306
    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p1

    .line 305
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setLabelVisibilityMode(I)V

    .line 309
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemIconGravity:I

    .line 310
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p1

    .line 309
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemIconGravity(I)V

    .line 313
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemGravity:I

    const/16 v3, 0x31

    .line 314
    invoke-virtual {p2, p1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p1

    .line 313
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemGravity(I)V

    .line 317
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemBackground:I

    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_e

    .line 319
    invoke-virtual {p4, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemBackgroundRes(I)V

    goto :goto_1

    .line 321
    :cond_e
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemRippleColor:I

    .line 322
    invoke-static {v0, p2, p1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 321
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 326
    :goto_1
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_measureBottomPaddingFromLabelBaseline:I

    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setMeasureBottomPaddingFromLabelBaseline(Z)V

    .line 329
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_labelFontScalingEnabled:I

    .line 330
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 329
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setLabelFontScalingEnabled(Z)V

    .line 332
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_labelMaxLines:I

    .line 333
    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p1

    .line 332
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setLabelMaxLines(I)V

    .line 335
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemActiveIndicatorStyle:I

    .line 336
    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_14

    .line 339
    invoke-virtual {p0, v2}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorEnabled(Z)V

    .line 342
    sget-object v3, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator:[I

    .line 343
    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 346
    sget v3, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_android_width:I

    .line 347
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 349
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorWidth(I)V

    .line 351
    sget v4, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_android_height:I

    .line 352
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 354
    invoke-virtual {p0, v4}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorHeight(I)V

    .line 356
    sget v4, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_marginHorizontal:I

    .line 357
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 359
    invoke-virtual {p0, v4}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorMarginHorizontal(I)V

    .line 362
    sget v6, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_expandedWidth:I

    .line 363
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x2

    if-eqz v6, :cond_11

    .line 366
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_3

    .line 368
    :cond_f
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_2

    .line 371
    :cond_10
    sget v1, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_expandedWidth:I

    invoke-virtual {p1, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    goto :goto_3

    :cond_11
    :goto_2
    move v1, v7

    .line 377
    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorExpandedWidth(I)V

    .line 379
    sget v1, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_expandedHeight:I

    .line 380
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 383
    invoke-virtual {p0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorExpandedHeight(I)V

    .line 385
    sget v1, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_expandedMarginHorizontal:I

    .line 386
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 389
    invoke-virtual {p0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorExpandedMarginHorizontal(I)V

    .line 391
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/material/R$dimen;->m3_navigation_item_leading_trailing_space:I

    .line 392
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 393
    sget v3, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_expandedActiveIndicatorPaddingStart:I

    .line 394
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 397
    sget v4, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_expandedActiveIndicatorPaddingEnd:I

    .line 398
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_12

    move v4, v1

    goto :goto_4

    :cond_12
    move v4, v3

    .line 404
    :goto_4
    sget v6, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_expandedActiveIndicatorPaddingTop:I

    .line 405
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 408
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getLayoutDirection()I

    move-result v7

    if-ne v7, v2, :cond_13

    goto :goto_5

    :cond_13
    move v3, v1

    .line 409
    :goto_5
    sget v1, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_expandedActiveIndicatorPaddingBottom:I

    .line 410
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 402
    invoke-virtual {p0, v4, v6, v3, v1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorExpandedPadding(IIII)V

    .line 414
    sget v1, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_android_color:I

    .line 415
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 419
    invoke-virtual {p0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    .line 421
    sget v1, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_shapeAppearance:I

    .line 422
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 425
    invoke-static {v0, v1, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 426
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarView;->setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 428
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 431
    :cond_14
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_menu:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 432
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_menu:I

    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->inflateMenu(I)V

    .line 435
    :cond_15
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 437
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->shouldAddMenuView()Z

    move-result p1

    if-nez p1, :cond_16

    .line 438
    invoke-virtual {p0, p4}, Lcom/google/android/material/navigation/NavigationBarView;->addView(Landroid/view/View;)V

    .line 441
    :cond_16
    new-instance p1, Lcom/google/android/material/navigation/NavigationBarView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/navigation/NavigationBarView$1;-><init>(Lcom/google/android/material/navigation/NavigationBarView;)V

    invoke-virtual {p3, p1}, Lcom/google/android/material/navigation/NavigationBarMenu;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/navigation/NavigationBarView;)Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarView;->reselectedListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/navigation/NavigationBarView;)Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarView;->selectedListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;

    return-object p0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1294
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 1295
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method private setMeasureBottomPaddingFromLabelBaseline(Z)V
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setMeasurePaddingFromLabelBaseline(Z)V

    return-void
.end method


# virtual methods
.method protected abstract createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
.end method

.method public getActiveIndicatorLabelPadding()I
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getActiveIndicatorLabelPadding()I

    move-result v0

    return v0
.end method

.method public getBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getBadge(I)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getCollapsedMaxItemCount()I
    .locals 1

    .line 1281
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMaxItemCount()I

    move-result v0

    return v0
.end method

.method public getHorizontalItemTextAppearanceActive()I
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getHorizontalItemTextAppearanceActive()I

    move-result v0

    return v0
.end method

.method public getHorizontalItemTextAppearanceInactive()I
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getHorizontalItemTextAppearanceInactive()I

    move-result v0

    return v0
.end method

.method public getIconLabelHorizontalSpacing()I
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getIconLabelHorizontalSpacing()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemActiveIndicatorExpandedHeight()I
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorExpandedHeight()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorExpandedMarginHorizontal()I
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorExpandedMarginHorizontal()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorExpandedWidth()I
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorExpandedWidth()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorHeight()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorMarginHorizontal()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorShapeAppearance()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorShapeAppearance()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorWidth()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemGravity()I
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemGravity()I

    move-result v0

    return v0
.end method

.method public getItemIconGravity()I
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemIconGravity()I

    move-result v0

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemIconSize()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemPaddingBottom()I
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getItemPaddingTop()I
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemPaddingTop()I

    move-result v0

    return v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemTextAppearanceActive()I

    move-result v0

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemTextAppearanceInactive()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getLabelMaxLines(I)I
    .locals 0

    .line 764
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getLabelMaxLines()I

    move-result p1

    return p1
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    move-result v0

    return v0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    return-object v0
.end method

.method public getMenuView()Landroidx/appcompat/view/menu/MenuView;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    return-object v0
.end method

.method public getMenuViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    return-object v0
.end method

.method public getOrCreateBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getOrCreateBadge(I)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getPresenter()Lcom/google/android/material/navigation/NavigationBarPresenter;
    .locals 1

    .line 1308
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    return-object v0
.end method

.method public getScaleLabelTextWithFont()Z
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getScaleLabelTextWithFont()Z

    move-result v0

    return v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public inflateMenu(I)V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 544
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 545
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 546
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-virtual {p1, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public isItemActiveIndicatorEnabled()Z
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorEnabled()Z

    move-result v0

    return v0
.end method

.method protected isSubMenuSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 471
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 473
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1323
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    if-nez v0, :cond_0

    .line 1324
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1327
    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    .line 1328
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1329
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenu;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1314
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1315
    new-instance v1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1316
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 1317
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    iget-object v2, v1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationBarMenu;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public removeBadge(I)V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->removeBadge(I)V

    return-void
.end method

.method public setActiveIndicatorLabelPadding(I)V
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setActiveIndicatorLabelPadding(I)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 483
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 484
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setHorizontalItemTextAppearanceActive(I)V
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setHorizontalItemTextAppearanceActive(I)V

    return-void
.end method

.method public setHorizontalItemTextAppearanceInactive(I)V
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setHorizontalItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setIconLabelHorizontalSpacing(I)V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setIconLabelHorizontalSpacing(I)V

    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorEnabled(Z)V

    return-void
.end method

.method public setItemActiveIndicatorExpandedHeight(I)V
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorExpandedHeight(I)V

    return-void
.end method

.method public setItemActiveIndicatorExpandedMarginHorizontal(I)V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorExpandedMarginHorizontal(I)V

    return-void
.end method

.method public setItemActiveIndicatorExpandedPadding(IIII)V
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorExpandedPadding(IIII)V

    return-void
.end method

.method public setItemActiveIndicatorExpandedWidth(I)V
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorExpandedWidth(I)V

    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorHeight(I)V

    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorMarginHorizontal(I)V

    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorWidth(I)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemBackgroundRes(I)V

    return-void
.end method

.method public setItemGravity(I)V
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemGravity()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 885
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemGravity(I)V

    .line 886
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconGravity(I)V
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getItemIconGravity()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemIconGravity(I)V

    .line 1089
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    .line 591
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemPaddingBottom(I)V

    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemPaddingTop(I)V

    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemTextAppearanceActive(I)V

    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemTextAppearanceActiveBoldEnabled(Z)V

    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelFontScalingEnabled(Z)V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setLabelFontScalingEnabled(Z)V

    return-void
.end method

.method public setLabelMaxLines(I)V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setLabelMaxLines(I)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setLabelVisibilityMode(I)V

    .line 1063
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setOnItemReselectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView;->reselectedListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView;->selectedListener:Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 3

    .line 1035
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/material/navigation/NavigationBarMenu;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    .line 1040
    invoke-interface {p1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setCheckedItem(Landroid/view/MenuItem;)V

    :cond_1
    return-void
.end method

.method public shouldAddMenuView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
