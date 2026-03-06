.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.source "NavigationView.java"

# interfaces
.implements Lcom/google/android/material/motion/MaterialBackHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;,
        Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field private static final DISABLED_STATE_SET:[I

.field private static final PRESENTER_NAVIGATION_VIEW_ID:I = 0x1


# instance fields
.field private final backDrawerListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

.field private final backOrchestrator:Lcom/google/android/material/motion/MaterialBackOrchestrator;

.field private bottomInsetScrimEnabled:Z

.field private drawerLayoutCornerSize:I

.field private final drawerLayoutCornerSizeBackAnimationEnabled:Z

.field private final drawerLayoutCornerSizeBackAnimationMax:I

.field private endInsetScrimEnabled:Z

.field listener:Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

.field private final maxWidth:I

.field private final menu:Lcom/google/android/material/internal/NavigationMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

.field private final shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

.field private final sideContainerBackHelper:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

.field private startInsetScrimEnabled:Z

.field private final tmpLocation:[I

.field private topInsetScrimEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    .line 126
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->CHECKED_STATE_SET:[I

    const v0, -0x101009e

    .line 127
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    .line 129
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_NavigationView:I

    sput v0, Lcom/google/android/material/navigation/NavigationView;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 180
    sget v0, Lcom/google/android/material/R$attr;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    .line 184
    sget v5, Lcom/google/android/material/navigation/NavigationView;->DEF_STYLE_RES:I

    move-object/from16 v1, p1

    invoke-static {v1, v2, v4, v5}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    new-instance v7, Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-direct {v7}, Lcom/google/android/material/internal/NavigationMenuPresenter;-><init>()V

    iput-object v7, v0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v1, 0x2

    .line 138
    new-array v1, v1, [I

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    const/4 v8, 0x1

    .line 142
    iput-boolean v8, v0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    .line 143
    iput-boolean v8, v0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    .line 144
    iput-boolean v8, v0, Lcom/google/android/material/navigation/NavigationView;->startInsetScrimEnabled:Z

    .line 145
    iput-boolean v8, v0, Lcom/google/android/material/navigation/NavigationView;->endInsetScrimEnabled:Z

    const/4 v9, 0x0

    .line 147
    iput v9, v0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    .line 150
    invoke-static {v0}, Lcom/google/android/material/shape/ShapeableDelegate;->create(Landroid/view/View;)Lcom/google/android/material/shape/ShapeableDelegate;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    .line 152
    new-instance v1, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    invoke-direct {v1, v0}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->sideContainerBackHelper:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    .line 154
    new-instance v1, Lcom/google/android/material/motion/MaterialBackOrchestrator;

    invoke-direct {v1, v0}, Lcom/google/android/material/motion/MaterialBackOrchestrator;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->backOrchestrator:Lcom/google/android/material/motion/MaterialBackOrchestrator;

    .line 155
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$1;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$1;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->backDrawerListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    .line 186
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 189
    new-instance v10, Lcom/google/android/material/internal/NavigationMenu;

    invoke-direct {v10, v1}, Lcom/google/android/material/internal/NavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    .line 192
    sget-object v3, Lcom/google/android/material/R$styleable;->NavigationView:[I

    new-array v6, v9, [I

    .line 193
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    .line 196
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_0
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_drawerLayoutCornerSize:I

    .line 203
    invoke-virtual {v3, v6, v9}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    if-nez v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v9

    .line 204
    :goto_0
    iput-boolean v6, v0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSizeBackAnimationEnabled:Z

    .line 206
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v11, Lcom/google/android/material/R$dimen;->m3_navigation_drawer_layout_corner_size:I

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSizeBackAnimationMax:I

    .line 210
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 211
    invoke-static {v6}, Lcom/google/android/material/drawable/DrawableUtils;->getColorStateListOrNull(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object v11

    if-eqz v6, :cond_2

    if-eqz v11, :cond_4

    .line 215
    :cond_2
    invoke-static {v1, v2, v4, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v2

    .line 216
    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v4, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    if-eqz v11, :cond_3

    .line 218
    invoke-virtual {v4, v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 220
    :cond_3
    invoke-virtual {v4, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :cond_4
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v3, v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    .line 227
    :cond_5
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v3, v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setFitsSystemWindows(Z)V

    .line 229
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v3, v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    .line 232
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 233
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    :cond_6
    move-object v2, v4

    .line 237
    :goto_1
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 238
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    .line 239
    invoke-virtual {v3, v5, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v5

    goto :goto_2

    :cond_7
    move v5, v9

    :goto_2
    const v6, 0x1010038

    if-nez v5, :cond_8

    if-nez v2, :cond_8

    .line 245
    invoke-direct {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 249
    :cond_8
    sget v11, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v3, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 250
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_3

    .line 252
    :cond_9
    invoke-direct {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 256
    :goto_3
    sget v11, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v3, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 257
    sget v11, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v3, v11, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v11

    goto :goto_4

    :cond_a
    move v11, v9

    .line 260
    :goto_4
    sget v12, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearanceActiveBoldEnabled:I

    .line 261
    invoke-virtual {v3, v12, v8}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 263
    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 264
    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v3, v13, v9}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    .line 268
    :cond_b
    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 269
    sget v13, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_5

    :cond_c
    move-object v13, v4

    :goto_5
    if-nez v11, :cond_d

    if-nez v13, :cond_d

    const v13, 0x1010036

    .line 274
    invoke-direct {v0, v13}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 277
    :cond_d
    sget v14, Lcom/google/android/material/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v3, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_e

    .line 280
    invoke-direct {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->hasShapeAppearance(Landroidx/appcompat/widget/TintTypedArray;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 281
    invoke-direct {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemBackground(Landroidx/appcompat/widget/TintTypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 283
    sget v15, Lcom/google/android/material/R$styleable;->NavigationView_itemRippleColor:I

    .line 284
    invoke-static {v1, v3, v15}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v15

    if-eqz v15, :cond_e

    .line 290
    invoke-direct {v0, v3, v4}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemDrawable(Landroidx/appcompat/widget/TintTypedArray;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 291
    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    .line 293
    invoke-static {v15}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-direct {v9, v15, v4, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 294
    invoke-virtual {v7, v9}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemForeground(Landroid/graphics/drawable/RippleDrawable;)V

    .line 298
    :cond_e
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 299
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    const/4 v8, 0x0

    .line 300
    invoke-virtual {v3, v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 301
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setItemHorizontalPadding(I)V

    goto :goto_6

    :cond_f
    const/4 v8, 0x0

    .line 304
    :goto_6
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 305
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    .line 306
    invoke-virtual {v3, v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 307
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setItemVerticalPadding(I)V

    .line 310
    :cond_10
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetStart:I

    .line 311
    invoke-virtual {v3, v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 312
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetStart(I)V

    .line 314
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetEnd:I

    .line 315
    invoke-virtual {v3, v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 316
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetEnd(I)V

    .line 318
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetStart:I

    .line 319
    invoke-virtual {v3, v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 320
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetStart(I)V

    .line 322
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetEnd:I

    .line 323
    invoke-virtual {v3, v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 324
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetEnd(I)V

    .line 326
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_topInsetScrimEnabled:I

    iget-boolean v8, v0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    .line 327
    invoke-virtual {v3, v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 326
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setTopInsetScrimEnabled(Z)V

    .line 329
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_bottomInsetScrimEnabled:I

    iget-boolean v8, v0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    .line 330
    invoke-virtual {v3, v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 329
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setBottomInsetScrimEnabled(Z)V

    .line 331
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_startInsetScrimEnabled:I

    iget-boolean v8, v0, Lcom/google/android/material/navigation/NavigationView;->startInsetScrimEnabled:Z

    .line 332
    invoke-virtual {v3, v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 331
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setStartInsetScrimEnabled(Z)V

    .line 334
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_endInsetScrimEnabled:I

    iget-boolean v8, v0, Lcom/google/android/material/navigation/NavigationView;->endInsetScrimEnabled:Z

    .line 335
    invoke-virtual {v3, v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 334
    invoke-virtual {v0, v4}, Lcom/google/android/material/navigation/NavigationView;->setEndInsetScrimEnabled(Z)V

    .line 337
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_itemIconPadding:I

    const/4 v8, 0x0

    .line 338
    invoke-virtual {v3, v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 340
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemMaxLines:I

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    .line 342
    new-instance v8, Lcom/google/android/material/navigation/NavigationView$2;

    invoke-direct {v8, v0}, Lcom/google/android/material/navigation/NavigationView$2;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v10, v8}, Lcom/google/android/material/internal/NavigationMenu;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 352
    invoke-virtual {v7, v9}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setId(I)V

    .line 353
    invoke-virtual {v7, v1, v10}, Lcom/google/android/material/internal/NavigationMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    if-eqz v5, :cond_11

    .line 355
    invoke-virtual {v7, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderTextAppearance(I)V

    .line 357
    :cond_11
    invoke-virtual {v7, v2}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderColor(Landroid/content/res/ColorStateList;)V

    .line 358
    invoke-virtual {v7, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 359
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getOverScrollMode()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    if-eqz v11, :cond_12

    .line 361
    invoke-virtual {v7, v11}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 363
    :cond_12
    invoke-virtual {v7, v12}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearanceActiveBoldEnabled(Z)V

    .line 364
    invoke-virtual {v7, v13}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 365
    invoke-virtual {v7, v14}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    invoke-virtual {v7, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 367
    invoke-virtual {v10, v7}, Lcom/google/android/material/internal/NavigationMenu;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 368
    invoke-virtual {v7, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->addView(Landroid/view/View;)V

    .line 370
    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 371
    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    const/4 v8, 0x0

    invoke-virtual {v3, v1, v8}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->inflateMenu(I)V

    goto :goto_7

    :cond_13
    const/4 v8, 0x0

    .line 374
    :goto_7
    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 375
    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v3, v1, v8}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    .line 378
    :cond_14
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 380
    invoke-direct {v0}, Lcom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/motion/MaterialBackOrchestrator;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->backOrchestrator:Lcom/google/android/material/motion/MaterialBackOrchestrator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->maybeClearCornerSizeAnimationForDrawerLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/navigation/NavigationView;)[I
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/NavigationMenuPresenter;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    return-object p0
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 6

    .line 1087
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1088
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 1091
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1092
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1093
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 1094
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 1097
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 1098
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 1099
    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    sget-object v4, Lcom/google/android/material/navigation/NavigationView;->CHECKED_STATE_SET:[I

    sget-object v5, Lcom/google/android/material/navigation/NavigationView;->EMPTY_STATE_SET:[I

    filled-new-array {v3, v4, v5}, [[I

    move-result-object v4

    .line 1102
    invoke-virtual {p1, v3, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    invoke-direct {v2, v4, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private createDefaultItemBackground(Landroidx/appcompat/widget/TintTypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 510
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeFillColor:I

    .line 509
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 511
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemDrawable(Landroidx/appcompat/widget/TintTypedArray;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private createDefaultItemDrawable(Landroidx/appcompat/widget/TintTypedArray;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 517
    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 518
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 519
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 520
    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 523
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 522
    invoke-static {v3, v0, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 525
    invoke-virtual {v4, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 527
    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 528
    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 529
    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 530
    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 531
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v3
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 1080
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method private hasShapeAppearance(Landroidx/appcompat/widget/TintTypedArray;)Z
    .locals 1

    .line 451
    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 452
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private maybeClearCornerSizeAnimationForDrawerLayout()V
    .locals 2

    .line 444
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSizeBackAnimationEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 445
    iput v0, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    .line 446
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/navigation/NavigationView;->maybeUpdateCornerSizeForDrawerLayout(II)V

    :cond_0
    return-void
.end method

.method private maybeUpdateCornerSizeForDrawerLayout(II)V
    .locals 5

    .line 410
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_3

    .line 411
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSizeBackAnimationEnabled:Z

    if-eqz v0, :cond_3

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_3

    .line 414
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 416
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 421
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 423
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    int-to-float v4, v4

    .line 424
    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 427
    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    goto :goto_1

    .line 430
    :cond_2
    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 431
    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 433
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 434
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 435
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/material/shape/ShapeableDelegate;->onShapeAppearanceChanged(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 436
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, v4, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/shape/ShapeableDelegate;->onMaskChanged(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 439
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    invoke-virtual {p1, p0, v2}, Lcom/google/android/material/shape/ShapeableDelegate;->setOffsetZeroCornerEdgeBoundsEnabled(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method

.method private requireDrawerLayoutParent()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroidx/drawerlayout/widget/DrawerLayout;",
            "Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;",
            ">;"
        }
    .end annotation

    .line 1063
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1064
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1065
    instance-of v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v2, :cond_0

    instance-of v2, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 1066
    new-instance v2, Landroid/util/Pair;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 1068
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavigationView back progress requires the direct parent view to be a DrawerLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setupInsetScrimsListener()V
    .locals 2

    .line 1112
    new-instance v0, Lcom/google/android/material/navigation/NavigationView$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/NavigationView$3;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1150
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public cancelBackProgress()V
    .locals 1

    .line 1056
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->requireDrawerLayoutParent()Landroid/util/Pair;

    .line 1057
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->sideContainerBackHelper:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    invoke-virtual {v0}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->cancelBackProgress()V

    .line 1058
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->maybeClearCornerSizeAnimationForDrawerLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    new-instance v1, Lcom/google/android/material/navigation/NavigationView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/material/navigation/NavigationView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/shape/ShapeableDelegate;->maybeClip(Landroid/graphics/Canvas;Lcom/google/android/material/canvas/CanvasCompat$CanvasOperation;)V

    return-void
.end method

.method getBackHelper()Lcom/google/android/material/motion/MaterialSideContainerBackHelper;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->sideContainerBackHelper:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    return-object v0
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getDividerInsetEnd()I

    move-result v0

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getHeaderCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getHeaderView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemHorizontalPadding()I

    move-result v0

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemIconPadding()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemMaxLines()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemVerticalPadding()I
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getItemVerticalPadding()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    return-object v0
.end method

.method public getSubheaderInsetEnd()I
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getSubheaderInsetEnd()I

    move-result v0

    return v0
.end method

.method public getSubheaderInsetStart()I
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->getSubheaderInsetStart()I

    move-result v0

    return v0
.end method

.method public handleBackInvoked()V
    .locals 5

    .line 1036
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->requireDrawerLayoutParent()Landroid/util/Pair;

    move-result-object v0

    .line 1037
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 1039
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->sideContainerBackHelper:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    invoke-virtual {v2}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->onHandleBackInvoked()Landroidx/activity/BackEventCompat;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1040
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-ge v3, v4, :cond_0

    goto :goto_0

    .line 1045
    :cond_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1047
    invoke-static {v1, p0}, Lcom/google/android/material/navigation/DrawerLayoutUtils;->getScrimCloseAnimatorListener(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    .line 1049
    invoke-static {v1}, Lcom/google/android/material/navigation/DrawerLayoutUtils;->getScrimCloseAnimatorUpdateListener(Landroidx/drawerlayout/widget/DrawerLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    .line 1050
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView;->sideContainerBackHelper:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    invoke-virtual {v4, v2, v0, v3, v1}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->finishBackProgress(Landroidx/activity/BackEventCompat;ILandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    .line 1041
    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    return-void
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->inflateHeaderView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public inflateMenu(I)V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 604
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 605
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 606
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public isBottomInsetScrimEnabled()Z
    .locals 1

    .line 926
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    return v0
.end method

.method public isEndInsetScrimEnabled()Z
    .locals 1

    .line 955
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->endInsetScrimEnabled:Z

    return v0
.end method

.method public isStartInsetScrimEnabled()Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->startInsetScrimEnabled:Z

    return v0
.end method

.method public isTopInsetScrimEnabled()Z
    .locals 1

    .line 911
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    return v0
.end method

.method synthetic lambda$dispatchDraw$0$com-google-android-material-navigation-NavigationView(Landroid/graphics/Canvas;)V
    .locals 0

    .line 585
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 457
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    .line 458
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 460
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 461
    instance-of v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->backOrchestrator:Lcom/google/android/material/motion/MaterialBackOrchestrator;

    invoke-virtual {v1}, Lcom/google/android/material/motion/MaterialBackOrchestrator;->shouldListenForBackCallbacks()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 464
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->backDrawerListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 465
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->backDrawerListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 467
    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->backOrchestrator:Lcom/google/android/material/motion/MaterialBackOrchestrator;

    invoke-virtual {v0}, Lcom/google/android/material/motion/MaterialBackOrchestrator;->startListeningForBackCallbacksWithPriorityOverlay()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 475
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    .line 477
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 479
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 480
    instance-of v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 481
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 482
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->backDrawerListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->backOrchestrator:Lcom/google/android/material/motion/MaterialBackOrchestrator;

    invoke-virtual {v0}, Lcom/google/android/material/motion/MaterialBackOrchestrator;->stopListeningForBackCallbacks()V

    return-void
.end method

.method protected onInsetsChanged(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->dispatchApplyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 566
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    iget p1, p0, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 573
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 572
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 580
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 545
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v0, :cond_0

    .line 546
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 549
    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    .line 550
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 551
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenu;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 536
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 537
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 538
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 539
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    iget-object v2, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/NavigationMenu;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 490
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onSizeChanged(IIII)V

    .line 491
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationView;->maybeUpdateCornerSizeForDrawerLayout(II)V

    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->removeHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .locals 0

    .line 936
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/NavigationMenu;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 850
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    return-void

    .line 852
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerInsetEnd(I)V
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setDividerInsetEnd(I)V

    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setDividerInsetStart(I)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 496
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setElevation(F)V

    .line 497
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setEndInsetScrimEnabled(Z)V
    .locals 0

    .line 964
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->endInsetScrimEnabled:Z

    return-void
.end method

.method public setForceCompatClippingEnabled(Z)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/shape/ShapeableDelegate;->setForceCompatClippingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 724
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    .line 827
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemMaxLines(I)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextAppearanceActiveBoldEnabled(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemVerticalPadding(I)V
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemVerticalPadding(I)V

    return-void
.end method

.method public setItemVerticalPaddingResource(I)V
    .locals 2

    .line 796
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setItemVerticalPadding(I)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->listener:Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 385
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setOverScrollMode(I)V

    .line 386
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setStartInsetScrimEnabled(Z)V
    .locals 0

    .line 950
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->startInsetScrimEnabled:Z

    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderInsetEnd(I)V

    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setSubheaderInsetStart(I)V

    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .locals 0

    .line 921
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    return-void
.end method

.method public startBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 1

    .line 1017
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->requireDrawerLayoutParent()Landroid/util/Pair;

    .line 1018
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->sideContainerBackHelper:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->startBackProgress(Landroidx/activity/BackEventCompat;)V

    return-void
.end method

.method public updateBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 2

    .line 1023
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->requireDrawerLayoutParent()Landroid/util/Pair;

    move-result-object v0

    .line 1024
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->sideContainerBackHelper:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, p1, v0}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->updateBackProgress(Landroidx/activity/BackEventCompat;I)V

    .line 1026
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSizeBackAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->sideContainerBackHelper:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->interpolateProgress(F)F

    move-result p1

    const/4 v0, 0x0

    .line 1028
    iget v1, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSizeBackAnimationMax:I

    .line 1029
    invoke-static {v0, v1, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/navigation/NavigationView;->drawerLayoutCornerSize:I

    .line 1030
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;->maybeUpdateCornerSizeForDrawerLayout(II)V

    :cond_0
    return-void
.end method
