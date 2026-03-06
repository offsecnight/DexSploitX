.class public Lcom/google/android/material/navigationrail/NavigationRailView;
.super Lcom/google/android/material/navigation/NavigationBarView;
.source "NavigationRailView.java"


# static fields
.field static final COLLAPSED_MAX_ITEM_COUNT:I = 0x7

.field private static final CUBIC_BEZIER_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final DEFAULT_HEADER_GRAVITY:I = 0x31

.field static final DEFAULT_MENU_GRAVITY:I = 0x31

.field private static final EXPAND_DURATION:I = 0x1f4

.field private static final FADE_DURATION:I = 0x64

.field static final NO_ITEM_MINIMUM_HEIGHT:I = -0x1


# instance fields
.field private collapsedIconGravity:I

.field private collapsedItemGravity:I

.field private collapsedItemMinHeight:I

.field private collapsedItemSpacing:I

.field private contentContainer:Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

.field private final contentMarginTop:I

.field private expanded:Z

.field private expandedIconGravity:I

.field private expandedItemGravity:I

.field private expandedItemMinHeight:I

.field private expandedItemSpacing:I

.field private final headerMarginBottom:I

.field private headerView:Landroid/view/View;

.field private final maxExpandedWidth:I

.field private final minExpandedWidth:I

.field private paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

.field private paddingStartSystemWindowInsets:Ljava/lang/Boolean;

.field private paddingTopSystemWindowInsets:Ljava/lang/Boolean;

.field private final scrollingEnabled:Z

.field private submenuDividersEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 129
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ec28f5c    # 0.38f

    const v4, 0x3f9ae148    # 1.21f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/material/navigationrail/NavigationRailView;->CUBIC_BEZIER_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 162
    sget v0, Lcom/google/android/material/R$attr;->navigationRailStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 167
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_NavigationRailView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 172
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/navigation/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    .line 142
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    .line 143
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingStartSystemWindowInsets:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    const/4 v0, -0x1

    .line 147
    iput v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedItemMinHeight:I

    .line 148
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedIconGravity:I

    const/16 v1, 0x31

    .line 149
    iput v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedItemGravity:I

    .line 175
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 177
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->m3_navigation_rail_expanded_item_spacing:I

    .line 179
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedItemSpacing:I

    const v3, 0x800013

    .line 180
    iput v3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedItemGravity:I

    const/4 v3, 0x1

    .line 181
    iput v3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedIconGravity:I

    .line 184
    sget-object v4, Lcom/google/android/material/R$styleable;->NavigationRailView:[I

    new-array v7, p1, [I

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 185
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 188
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_contentMarginTop:I

    .line 191
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_navigation_rail_margin:I

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 189
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentMarginTop:I

    .line 192
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_headerMarginBottom:I

    .line 194
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_navigation_rail_margin:I

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 193
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerMarginBottom:I

    .line 195
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_scrollingEnabled:I

    .line 196
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->scrollingEnabled:Z

    .line 197
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_submenuDividersEnabled:I

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailView;->setSubmenuDividersEnabled(Z)V

    .line 199
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->addContentContainer()V

    .line 201
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_headerLayout:I

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    .line 203
    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailView;->addHeaderView(I)V

    .line 206
    :cond_0
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_menuGravity:I

    .line 207
    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p3

    .line 206
    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailView;->setMenuGravity(I)V

    .line 209
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_itemMinHeight:I

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 211
    sget p4, Lcom/google/android/material/R$styleable;->NavigationRailView_itemMinHeight:I

    invoke-virtual {p2, p4, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p4

    .line 214
    sget v1, Lcom/google/android/material/R$styleable;->NavigationRailView_collapsedItemMinHeight:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_collapsedItemMinHeight:I

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 218
    :cond_1
    sget v1, Lcom/google/android/material/R$styleable;->NavigationRailView_expandedItemMinHeight:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    sget p4, Lcom/google/android/material/R$styleable;->NavigationRailView_expandedItemMinHeight:I

    invoke-virtual {p2, p4, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p4

    .line 222
    :cond_2
    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailView;->setCollapsedItemMinimumHeight(I)V

    .line 223
    invoke-virtual {p0, p4}, Lcom/google/android/material/navigationrail/NavigationRailView;->setExpandedItemMinimumHeight(I)V

    .line 224
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_expandedMinWidth:I

    .line 227
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/google/android/material/R$dimen;->m3_navigation_rail_min_expanded_width:I

    .line 228
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 224
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->minExpandedWidth:I

    .line 229
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_expandedMaxWidth:I

    .line 232
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/google/android/material/R$dimen;->m3_navigation_rail_max_expanded_width:I

    .line 233
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 229
    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->maxExpandedWidth:I

    .line 235
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingTopSystemWindowInsets:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 236
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingTopSystemWindowInsets:I

    .line 237
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    .line 239
    :cond_3
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingBottomSystemWindowInsets:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 240
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingBottomSystemWindowInsets:I

    .line 241
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    .line 244
    :cond_4
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingStartSystemWindowInsets:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 245
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingStartSystemWindowInsets:I

    .line 246
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingStartSystemWindowInsets:Ljava/lang/Boolean;

    .line 251
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/google/android/material/R$dimen;->m3_navigation_rail_item_padding_top_with_large_font:I

    .line 252
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 254
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/google/android/material/R$dimen;->m3_navigation_rail_item_padding_bottom_with_large_font:I

    .line 255
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    .line 258
    invoke-static {v2}, Lcom/google/android/material/resources/MaterialResources;->getFontScale(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v2, v1, v3, v1, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    .line 259
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getItemPaddingTop()I

    move-result v1

    invoke-static {v1, p3, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p3

    int-to-float p3, p3

    .line 261
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getItemPaddingBottom()I

    move-result v1

    invoke-static {v1, p4, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p4

    int-to-float p4, p4

    .line 262
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailView;->setItemPaddingTop(I)V

    .line 263
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailView;->setItemPaddingBottom(I)V

    .line 264
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_itemSpacing:I

    .line 265
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 264
    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailView;->setCollapsedItemSpacing(I)V

    .line 266
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_expanded:I

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->setExpanded(Z)V

    .line 268
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 270
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->applyWindowInsets()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->shouldApplyWindowInsetPadding(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingStartSystemWindowInsets:Ljava/lang/Boolean;

    return-object p0
.end method

.method private addContentContainer()V
    .locals 5

    .line 720
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 721
    new-instance v1, Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentContainer:Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

    .line 722
    iget v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentMarginTop:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;->setPaddingTop(I)V

    .line 723
    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentContainer:Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

    iget-boolean v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->scrollingEnabled:Z

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;->setScrollingEnabled(Z)V

    .line 724
    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentContainer:Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;->setClipChildren(Z)V

    .line 725
    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentContainer:Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentContainer:Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;->addView(Landroid/view/View;)V

    .line 729
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->scrollingEnabled:Z

    if-nez v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentContainer:Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->addView(Landroid/view/View;)V

    return-void

    .line 734
    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 735
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 736
    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentContainer:Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 737
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private applyWindowInsets()V
    .locals 1

    .line 412
    new-instance v0, Lcom/google/android/material/navigationrail/NavigationRailView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigationrail/NavigationRailView$1;-><init>(Lcom/google/android/material/navigationrail/NavigationRailView;)V

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private getMaxChildWidth()I
    .locals 6

    .line 455
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 458
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 459
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarDividerView;

    if-nez v4, :cond_0

    .line 460
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    .locals 1

    .line 676
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    return-object v0
.end method

.method private makeExpandedWidthMeasureSpec(II)I
    .locals 3

    .line 699
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->minExpandedWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 701
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    .line 702
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 704
    iget-object p2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 705
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getSuggestedMinimumWidth()I

    move-result p2

    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->maxExpandedWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 708
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    return p1
.end method

.method private makeMinWidthSpec(I)I
    .locals 4

    .line 688
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 689
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 693
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 692
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method private setExpanded(Z)V
    .locals 5

    .line 366
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->startTransitionAnimation()V

    .line 370
    iput-boolean p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    .line 371
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedIconGravity:I

    .line 372
    iget v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedItemSpacing:I

    .line 373
    iget v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedItemMinHeight:I

    .line 374
    iget v3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedItemGravity:I

    if-eqz p1, :cond_1

    .line 376
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedIconGravity:I

    .line 377
    iget v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedItemSpacing:I

    .line 378
    iget v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedItemMinHeight:I

    .line 379
    iget v3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedItemGravity:I

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemGravity(I)V

    .line 382
    invoke-super {p0, v0}, Lcom/google/android/material/navigation/NavigationBarView;->setItemIconGravity(I)V

    .line 383
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemSpacing(I)V

    .line 384
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemMinimumHeight(I)V

    .line 385
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setExpanded(Z)V

    return-void
.end method

.method private shouldApplyWindowInsetPadding(Ljava/lang/Boolean;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getFitsSystemWindows()Z

    move-result p1

    return p1
.end method

.method private startTransitionAnimation()V
    .locals 12

    .line 274
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    new-instance v0, Landroidx/transition/ChangeBounds;

    invoke-direct {v0}, Landroidx/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroidx/transition/ChangeBounds;->setDuration(J)Landroidx/transition/Transition;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/navigationrail/NavigationRailView;->CUBIC_BEZIER_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 278
    invoke-virtual {v0, v1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    move-result-object v0

    .line 279
    new-instance v1, Landroidx/transition/Fade;

    invoke-direct {v1}, Landroidx/transition/Fade;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroidx/transition/Fade;->setDuration(J)Landroidx/transition/Transition;

    move-result-object v1

    .line 280
    new-instance v4, Landroidx/transition/Fade;

    invoke-direct {v4}, Landroidx/transition/Fade;-><init>()V

    invoke-virtual {v4, v2, v3}, Landroidx/transition/Fade;->setDuration(J)Landroidx/transition/Transition;

    move-result-object v4

    .line 281
    new-instance v5, Lcom/google/android/material/navigationrail/LabelMoveTransition;

    invoke-direct {v5}, Lcom/google/android/material/navigationrail/LabelMoveTransition;-><init>()V

    .line 282
    new-instance v6, Landroidx/transition/Fade;

    invoke-direct {v6}, Landroidx/transition/Fade;-><init>()V

    invoke-virtual {v6, v2, v3}, Landroidx/transition/Fade;->setDuration(J)Landroidx/transition/Transition;

    move-result-object v2

    .line 285
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v3, :cond_3

    .line 287
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 288
    instance-of v10, v9, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v10, :cond_2

    .line 290
    move-object v10, v9

    check-cast v10, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->getLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    move-result-object v11

    invoke-virtual {v0, v11, v8}, Landroidx/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;

    .line 292
    invoke-virtual {v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->getExpandedLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    move-result-object v11

    .line 291
    invoke-virtual {v0, v11, v8}, Landroidx/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;

    .line 296
    iget-boolean v8, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    if-eqz v8, :cond_1

    .line 297
    invoke-virtual {v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->getExpandedLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    .line 298
    invoke-virtual {v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->getLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    goto :goto_1

    .line 302
    :cond_1
    invoke-virtual {v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->getLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    .line 303
    invoke-virtual {v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->getExpandedLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    .line 306
    :goto_1
    invoke-virtual {v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->getExpandedLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    move-result-object v8

    .line 305
    invoke-virtual {v5, v8}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    .line 308
    :cond_2
    invoke-virtual {v2, v9}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 311
    :cond_3
    new-instance v3, Landroidx/transition/TransitionSet;

    invoke-direct {v3}, Landroidx/transition/TransitionSet;-><init>()V

    .line 312
    invoke-virtual {v3, v6}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    .line 314
    invoke-virtual {v3, v0}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v5}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 319
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    if-nez v0, :cond_4

    .line 320
    invoke-virtual {v3, v2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 323
    :cond_4
    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 324
    invoke-virtual {v0, v6}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    .line 325
    invoke-virtual {v0, v4}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 328
    iget-boolean v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    if-eqz v1, :cond_5

    .line 329
    invoke-virtual {v0, v2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 332
    :cond_5
    new-instance v1, Landroidx/transition/TransitionSet;

    invoke-direct {v1}, Landroidx/transition/TransitionSet;-><init>()V

    .line 333
    invoke-virtual {v1, v8}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    .line 335
    invoke-virtual {v1, v0}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v0

    .line 336
    invoke-virtual {v0, v3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 338
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    return-void
.end method


# virtual methods
.method public addHeaderView(I)V
    .locals 2

    .line 504
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3

    .line 517
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->removeHeaderView()V

    .line 518
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    .line 520
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x31

    .line 521
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 522
    iget v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerMarginBottom:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 523
    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentContainer:Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public collapse()V
    .locals 2

    .line 404
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 407
    invoke-direct {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->setExpanded(Z)V

    .line 408
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->nav_rail_collapsed_a11y_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object p1

    return-object p1
.end method

.method protected createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    .locals 1

    .line 684
    new-instance v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    invoke-direct {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public expand()V
    .locals 2

    .line 390
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 393
    invoke-direct {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->setExpanded(Z)V

    .line 394
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->nav_rail_expanded_a11y_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getCollapsedItemMinimumHeight()I
    .locals 1

    .line 596
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedItemMinHeight:I

    return v0
.end method

.method public getCollapsedMaxItemCount()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getExpandedItemMinimumHeight()I
    .locals 1

    .line 615
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedItemMinHeight:I

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    return-object v0
.end method

.method public getItemGravity()I
    .locals 1

    .line 362
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getItemGravity()I

    move-result v0

    return v0
.end method

.method public getItemIconGravity()I
    .locals 1

    .line 350
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getItemIconGravity()I

    move-result v0

    return v0
.end method

.method public getItemMinimumHeight()I
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getItemMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getItemSpacing()I
    .locals 1

    .line 660
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getItemSpacing()I

    move-result v0

    return v0
.end method

.method public getMaxItemCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getMenuGravity()I
    .locals 1

    .line 560
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getMenuGravity()I

    move-result v0

    return v0
.end method

.method public getSubmenuDividersEnabled()Z
    .locals 1

    .line 633
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->submenuDividersEnabled:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    return v0
.end method

.method protected isSubMenuSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 468
    invoke-direct {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->makeMinWidthSpec(I)I

    move-result v0

    .line 469
    iget-boolean v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    if-eqz v1, :cond_1

    .line 471
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/navigationrail/NavigationRailView;->measureChild(Landroid/view/View;II)V

    .line 472
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/navigationrail/NavigationRailView;->measureChild(Landroid/view/View;II)V

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMaxChildWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->makeExpandedWidthMeasureSpec(II)I

    move-result v0

    .line 478
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getItemActiveIndicatorExpandedWidth()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 479
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object p1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->updateActiveIndicator(I)V

    .line 482
    :cond_1
    invoke-super {p0, v0, p2}, Lcom/google/android/material/navigation/NavigationBarView;->onMeasure(II)V

    .line 485
    iget-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentContainer:Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

    invoke-virtual {p1}, Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMeasuredHeight()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 486
    iget-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentContainer:Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

    .line 489
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMeasuredHeight()I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 486
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/material/navigationrail/NavigationRailView;->measureChild(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 751
    invoke-super {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public removeHeaderView()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 548
    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->contentContainer:Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/navigationrail/NavigationRailFrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 549
    iput-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setCollapsedItemMinimumHeight(I)V
    .locals 1

    .line 586
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedItemMinHeight:I

    .line 587
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemMinimumHeight(I)V

    :cond_0
    return-void
.end method

.method public setCollapsedItemSpacing(I)V
    .locals 1

    .line 652
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedItemSpacing:I

    .line 653
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    if-nez v0, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemSpacing(I)V

    :cond_0
    return-void
.end method

.method public setExpandedItemMinimumHeight(I)V
    .locals 1

    .line 605
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedItemMinHeight:I

    .line 606
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expanded:Z

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemMinimumHeight(I)V

    :cond_0
    return-void
.end method

.method public setItemGravity(I)V
    .locals 0

    .line 355
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedItemGravity:I

    .line 356
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedItemGravity:I

    .line 357
    invoke-super {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemGravity(I)V

    return-void
.end method

.method public setItemIconGravity(I)V
    .locals 0

    .line 343
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedIconGravity:I

    .line 344
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedIconGravity:I

    .line 345
    invoke-super {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setItemIconGravity(I)V

    return-void
.end method

.method public setItemMinimumHeight(I)V
    .locals 1

    .line 574
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedItemMinHeight:I

    .line 575
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedItemMinHeight:I

    .line 576
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    .line 577
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemMinimumHeight(I)V

    return-void
.end method

.method public setItemSpacing(I)V
    .locals 1

    .line 640
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->collapsedItemSpacing:I

    .line 641
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->expandedItemSpacing:I

    .line 642
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemSpacing(I)V

    return-void
.end method

.method public setMenuGravity(I)V
    .locals 1

    .line 555
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setMenuGravity(I)V

    return-void
.end method

.method public setSubmenuDividersEnabled(Z)V
    .locals 1

    .line 622
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->submenuDividersEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 625
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->submenuDividersEnabled:Z

    .line 626
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setSubmenuDividersEnabled(Z)V

    return-void
.end method

.method public shouldAddMenuView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
