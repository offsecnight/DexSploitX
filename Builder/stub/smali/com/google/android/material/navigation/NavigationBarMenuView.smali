.class public abstract Lcom/google/android/material/navigation/NavigationBarMenuView;
.super Landroid/view/ViewGroup;
.source "NavigationBarMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DEFAULT_COLLAPSED_MAX_COUNT:I = 0x7

.field private static final DISABLED_STATE_SET:[I

.field private static final NO_PADDING:I = -0x1

.field private static final NO_SELECTED_ITEM:I = -0x1


# instance fields
.field private final badgeDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

.field private checkedItem:Landroid/view/MenuItem;

.field private collapsedMaxItemCount:I

.field private dividersEnabled:Z

.field private expanded:Z

.field private horizontalItemTextAppearanceActive:I

.field private horizontalItemTextAppearanceInactive:I

.field private iconLabelHorizontalSpacing:I

.field private itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

.field private itemActiveIndicatorEnabled:Z

.field private itemActiveIndicatorExpandedHeight:I

.field private itemActiveIndicatorExpandedMarginHorizontal:I

.field private final itemActiveIndicatorExpandedPadding:Landroid/graphics/Rect;

.field private itemActiveIndicatorExpandedWidth:I

.field private itemActiveIndicatorHeight:I

.field private itemActiveIndicatorLabelPadding:I

.field private itemActiveIndicatorMarginHorizontal:I

.field private itemActiveIndicatorResizeable:Z

.field private itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private itemActiveIndicatorWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private itemGravity:I

.field private itemIconGravity:I

.field private itemIconSize:I

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private itemPaddingBottom:I

.field private itemPaddingTop:I

.field private itemPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/google/android/material/navigation/NavigationBarItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemPoolSize:I

.field private itemRippleColor:Landroid/content/res/ColorStateList;

.field private itemTextAppearanceActive:I

.field private itemTextAppearanceActiveBoldEnabled:Z

.field private itemTextAppearanceInactive:I

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private labelMaxLines:I

.field private labelVisibilityMode:I

.field private measurePaddingFromLabelBaseline:Z

.field private menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final onTouchListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

.field private scaleLabelWithFont:Z

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Landroidx/transition/TransitionSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    .line 71
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    const v0, -0x101009e

    .line 72
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 139
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    const/4 p1, -0x1

    .line 88
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 89
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 105
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingTop:I

    .line 106
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    .line 107
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorLabelPadding:I

    .line 108
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->iconLabelHorizontalSpacing:I

    const/16 p1, 0x31

    .line 118
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemGravity:I

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    const/4 v0, 0x1

    .line 127
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelMaxLines:I

    .line 129
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPoolSize:I

    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->checkedItem:Landroid/view/MenuItem;

    const/4 v2, 0x7

    .line 134
    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->collapsedMaxItemCount:I

    .line 135
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->dividersEnabled:Z

    .line 136
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedPadding:Landroid/graphics/Rect;

    const v2, 0x1010038

    .line 141
    invoke-virtual {p0, v2}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 143
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/TransitionSet;

    goto :goto_0

    .line 146
    :cond_0
    new-instance v1, Landroidx/transition/AutoTransition;

    invoke-direct {v1}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/TransitionSet;

    .line 147
    invoke-virtual {v1, p1}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    .line 148
    const-class p1, Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroidx/transition/TransitionSet;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;

    .line 151
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    .line 153
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$integer;->material_motion_duration_long_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 150
    invoke-static {p1, v2, v3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p1

    int-to-long v2, p1

    .line 149
    invoke-virtual {v1, v2, v3}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/TransitionSet;

    .line 156
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 155
    invoke-static {p1, v2, v3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 154
    invoke-virtual {v1, p1}, Landroidx/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    .line 159
    new-instance p1, Lcom/google/android/material/internal/TextScale;

    invoke-direct {p1}, Lcom/google/android/material/internal/TextScale;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 162
    :goto_0
    new-instance p1, Lcom/google/android/material/navigation/NavigationBarMenuView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/navigation/NavigationBarMenuView$1;-><init>(Lcom/google/android/material/navigation/NavigationBarMenuView;)V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 177
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setImportantForAccessibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/navigation/NavigationBarMenuView;)Lcom/google/android/material/navigation/NavigationBarPresenter;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/navigation/NavigationBarMenuView;)Lcom/google/android/material/navigation/NavigationBarMenuBuilder;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    return-object p0
.end method

.method private createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 922
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 924
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private createMenuItem(ILandroidx/appcompat/view/menu/MenuItemImpl;ZZ)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 3

    .line 1121
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 1122
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1123
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 1124
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getNewItem()Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v0

    .line 1125
    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setShifting(Z)V

    .line 1126
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelMaxLines:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelMaxLines(I)V

    .line 1127
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 1128
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    .line 1130
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1131
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    .line 1132
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    .line 1133
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->horizontalItemTextAppearanceInactive:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setHorizontalTextAppearanceInactive(I)V

    .line 1134
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->horizontalItemTextAppearanceActive:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setHorizontalTextAppearanceActive(I)V

    .line 1135
    iget-boolean p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActiveBoldEnabled:Z

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActiveBoldEnabled(Z)V

    .line 1136
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1137
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingTop:I

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    .line 1138
    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingTop(I)V

    .line 1140
    :cond_0
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    if-eq p3, v2, :cond_1

    .line 1141
    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingBottom(I)V

    .line 1143
    :cond_1
    iget-boolean p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->measurePaddingFromLabelBaseline:Z

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setMeasureBottomPaddingFromLabelBaseline(Z)V

    .line 1144
    iget-boolean p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->scaleLabelWithFont:Z

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelFontScalingEnabled(Z)V

    .line 1145
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorLabelPadding:I

    if-eq p3, v2, :cond_2

    .line 1146
    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorLabelPadding(I)V

    .line 1148
    :cond_2
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->iconLabelHorizontalSpacing:I

    if-eq p3, v2, :cond_3

    .line 1149
    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconLabelHorizontalSpacing(I)V

    .line 1151
    :cond_3
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorWidth(I)V

    .line 1152
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorHeight(I)V

    .line 1153
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedWidth:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorExpandedWidth(I)V

    .line 1154
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedHeight:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorExpandedHeight(I)V

    .line 1155
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorMarginHorizontal(I)V

    .line 1156
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemGravity:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemGravity(I)V

    .line 1157
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorExpandedPadding(Landroid/graphics/Rect;)V

    .line 1158
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedMarginHorizontal:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorExpandedMarginHorizontal(I)V

    .line 1159
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1160
    iget-boolean p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    .line 1161
    iget-boolean p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorEnabled(Z)V

    .line 1162
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_4

    .line 1163
    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1165
    :cond_4
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(I)V

    .line 1167
    :goto_0
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemRippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1168
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    .line 1169
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconGravity:I

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemIconGravity(I)V

    .line 1170
    invoke-virtual {v0, p4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setOnlyShowWhenExpanded(Z)V

    .line 1171
    iget-boolean p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->expanded:Z

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setExpanded(Z)V

    .line 1172
    invoke-virtual {v0, p2, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 1173
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPosition(I)V

    .line 1174
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result p2

    .line 1175
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1176
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    iget p3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    if-eqz p3, :cond_5

    if-ne p2, p3, :cond_5

    .line 1178
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 1180
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setBadgeIfNeeded(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    return-object v0
.end method

.method private getCollapsedVisibleItemCount()I
    .locals 2

    .line 1358
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->collapsedMaxItemCount:I

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getVisibleMainContentItemCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getNewItem()Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationBarItemView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1334
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private isMenuStructureSame()Z
    .locals 5

    .line 1262
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    goto :goto_3

    :cond_0
    move v0, v1

    .line 1265
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_6

    .line 1267
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v2, v0}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getItemAt(I)Landroid/view/MenuItem;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/navigation/DividerMenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/google/android/material/navigation/NavigationBarDividerView;

    if-nez v2, :cond_1

    return v1

    .line 1271
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    .line 1272
    invoke-virtual {v2, v0}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getItemAt(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/google/android/material/navigation/NavigationBarSubheaderView;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    .line 1273
    :goto_1
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    .line 1274
    invoke-virtual {v4, v0}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getItemAt(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    aget-object v4, v4, v0

    instance-of v4, v4, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    .line 1275
    :goto_2
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v4, v0}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getItemAt(I)Landroid/view/MenuItem;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/material/navigation/DividerMenuItem;

    if-nez v4, :cond_5

    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v3

    :cond_7
    :goto_3
    return v1
.end method

.method private isValidId(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private releaseItemPool()V
    .locals 5

    .line 1109
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    if-eqz v1, :cond_1

    .line 1110
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1111
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 1112
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-interface {v4, v3}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1113
    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->clear()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeUnusedBadges()V
    .locals 4

    .line 1463
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1465
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1466
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v3, v2}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getItemAt(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1469
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1470
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1472
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setBadgeIfNeeded(Lcom/google/android/material/navigation/NavigationBarItemView;)V
    .locals 2

    .line 1450
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->getId()I

    move-result v0

    .line 1451
    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isValidId(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1456
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_1

    .line 1458
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private validateMenuItemId(I)V
    .locals 2

    .line 1510
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1511
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a valid view id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public buildMenuView()V
    .locals 11

    .line 1186
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->removeAllViews()V

    .line 1187
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->releaseItemPool()V

    .line 1189
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 1190
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->refreshItems()V

    .line 1191
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 1193
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getContentItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1195
    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 1196
    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    const/4 v0, 0x0

    .line 1197
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    .line 1198
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    return-void

    .line 1202
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPoolSize:I

    if-eq v3, v0, :cond_2

    .line 1203
    :cond_1
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPoolSize:I

    .line 1204
    new-instance v3, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v3, v0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    .line 1206
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->removeUnusedBadges()V

    .line 1208
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->size()I

    move-result v0

    .line 1209
    new-array v3, v0, [Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    iput-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    .line 1212
    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 1213
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getCurrentVisibleContentItemCount()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isShifting(II)Z

    move-result v3

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v0, :cond_a

    .line 1215
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v7, v4}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getItemAt(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1217
    instance-of v8, v7, Lcom/google/android/material/navigation/DividerMenuItem;

    if-eqz v8, :cond_3

    .line 1219
    new-instance v9, Lcom/google/android/material/navigation/NavigationBarDividerView;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/android/material/navigation/NavigationBarDividerView;-><init>(Landroid/content/Context;)V

    .line 1220
    invoke-interface {v9, v1}, Lcom/google/android/material/navigation/NavigationBarMenuItemView;->setOnlyShowWhenExpanded(Z)V

    .line 1221
    move-object v10, v9

    check-cast v10, Lcom/google/android/material/navigation/NavigationBarDividerView;

    iget-boolean v10, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->dividersEnabled:Z

    invoke-virtual {v9, v10}, Lcom/google/android/material/navigation/NavigationBarDividerView;->setDividersEnabled(Z)V

    goto :goto_3

    .line 1222
    :cond_3
    invoke-interface {v7}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_6

    if-gtz v5, :cond_5

    .line 1231
    new-instance v9, Lcom/google/android/material/navigation/NavigationBarSubheaderView;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v9, v5}, Lcom/google/android/material/navigation/NavigationBarSubheaderView;-><init>(Landroid/content/Context;)V

    .line 1232
    move-object v5, v9

    check-cast v5, Lcom/google/android/material/navigation/NavigationBarSubheaderView;

    .line 1233
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->horizontalItemTextAppearanceActive:I

    if-eqz v5, :cond_4

    goto :goto_1

    .line 1234
    :cond_4
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    .line 1233
    :goto_1
    invoke-virtual {v9, v5}, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->setTextAppearance(I)V

    .line 1235
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v9, v5}, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1236
    invoke-interface {v9, v1}, Lcom/google/android/material/navigation/NavigationBarMenuItemView;->setOnlyShowWhenExpanded(Z)V

    .line 1237
    move-object v5, v7

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-interface {v9, v5, v2}, Lcom/google/android/material/navigation/NavigationBarMenuItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 1238
    invoke-interface {v7}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SubMenu;->size()I

    move-result v5

    goto :goto_3

    .line 1226
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one layer of submenu is supported; a submenu inside a submenu is not supported by the Navigation Bar."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-lez v5, :cond_7

    .line 1240
    move-object v9, v7

    check-cast v9, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1241
    invoke-direct {p0, v4, v9, v3, v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createMenuItem(ILandroidx/appcompat/view/menu/MenuItemImpl;ZZ)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v9

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 1244
    :cond_7
    move-object v9, v7

    check-cast v9, Landroidx/appcompat/view/menu/MenuItemImpl;

    iget v10, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->collapsedMaxItemCount:I

    if-lt v6, v10, :cond_8

    move v10, v1

    goto :goto_2

    :cond_8
    move v10, v2

    .line 1245
    :goto_2
    invoke-direct {p0, v4, v9, v3, v10}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createMenuItem(ILandroidx/appcompat/view/menu/MenuItemImpl;ZZ)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v9

    add-int/lit8 v6, v6, 0x1

    :goto_3
    if-nez v8, :cond_9

    .line 1250
    invoke-interface {v7}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9

    .line 1252
    iput v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 1254
    :cond_9
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    aput-object v9, v7, v4

    .line 1255
    check-cast v9, Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/google/android/material/navigation/NavigationBarMenuView;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    sub-int/2addr v0, v1

    .line 1257
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 1258
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/google/android/material/navigation/NavigationBarMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setCheckedItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 6

    .line 1085
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1086
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1090
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1091
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 1092
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 1095
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 1096
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 1097
    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/google/android/material/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    sget-object v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    sget-object v5, Lcom/google/android/material/navigation/NavigationBarMenuView;->EMPTY_STATE_SET:[I

    filled-new-array {v3, v4, v5}, [[I

    move-result-object v4

    .line 1100
    invoke-virtual {p1, v3, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    invoke-direct {v2, v4, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method protected abstract createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
.end method

.method public findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 5

    .line 1479
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->validateMenuItemId(I)V

    .line 1480
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 1481
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1482
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 1483
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getActiveIndicatorLabelPadding()I
    .locals 1

    .line 547
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorLabelPadding:I

    return v0
.end method

.method public getBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 1

    .line 1415
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/badge/BadgeDrawable;

    return-object p1
.end method

.method getBadgeDrawables()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation

    .line 1390
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentVisibleContentItemCount()I
    .locals 1

    .line 1362
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->expanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getVisibleContentItemCount()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getCollapsedVisibleItemCount()I

    move-result v0

    return v0
.end method

.method public getHorizontalItemTextAppearanceActive()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->horizontalItemTextAppearanceActive:I

    return v0
.end method

.method public getHorizontalItemTextAppearanceInactive()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->horizontalItemTextAppearanceInactive:I

    return v0
.end method

.method public getIconLabelHorizontalSpacing()I
    .locals 1

    .line 572
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->iconLabelHorizontalSpacing:I

    return v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemActiveIndicatorEnabled()Z
    .locals 1

    .line 598
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    return v0
.end method

.method public getItemActiveIndicatorExpandedHeight()I
    .locals 1

    .line 731
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedHeight:I

    return v0
.end method

.method public getItemActiveIndicatorExpandedMarginHorizontal()I
    .locals 1

    .line 787
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedMarginHorizontal:I

    return v0
.end method

.method public getItemActiveIndicatorExpandedWidth()I
    .locals 1

    .line 702
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedWidth:I

    return v0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 1

    .line 650
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 1

    .line 759
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    return v0
.end method

.method public getItemActiveIndicatorShapeAppearance()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 1

    .line 624
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 993
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 995
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 996
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 999
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 939
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    return v0
.end method

.method public getItemGravity()I
    .locals 1

    .line 692
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemGravity:I

    return v0
.end method

.method public getItemIconGravity()I
    .locals 1

    .line 1058
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconGravity:I

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    return v0
.end method

.method public getItemPaddingBottom()I
    .locals 1

    .line 481
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    return v0
.end method

.method public getItemPaddingTop()I
    .locals 1

    .line 458
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingTop:I

    return v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemRippleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .line 375
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .line 333
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelMaxLines()I
    .locals 1

    .line 539
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelMaxLines:I

    return v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 1029
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    return v0
.end method

.method protected getMenu()Lcom/google/android/material/navigation/NavigationBarMenuBuilder;
    .locals 1

    .line 1502
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    return-object v0
.end method

.method getOrCreateBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 2

    .line 1426
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->validateMenuItemId(I)V

    .line 1427
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    if-nez v0, :cond_0

    .line 1430
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable;->create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    .line 1431
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1433
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1435
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_1
    return-object v0
.end method

.method public getScaleLabelTextWithFont()Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->scaleLabelWithFont:Z

    return v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 1366
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    return v0
.end method

.method protected getSelectedItemPosition()I
    .locals 1

    .line 1497
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    .line 214
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-direct {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->expanded:Z

    return v0
.end method

.method protected isItemActiveIndicatorResizeable()Z
    .locals 1

    .line 865
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    return v0
.end method

.method protected isShifting(II)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    if-le p2, p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 224
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 225
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 229
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getCurrentVisibleContentItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 227
    invoke-static {v2, v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 226
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method removeBadge(I)V
    .locals 2

    .line 1441
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->validateMenuItemId(I)V

    .line 1442
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1444
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->removeBadge()V

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method restoreBadgeDrawables(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1394
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1395
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1396
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 1398
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1401
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz p1, :cond_3

    .line 1402
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    .line 1403
    instance-of v3, v2, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v3, :cond_2

    .line 1404
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    check-cast v2, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v3, :cond_2

    .line 1406
    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setActiveIndicatorLabelPadding(I)V
    .locals 5

    .line 554
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorLabelPadding:I

    .line 555
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 556
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 557
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 558
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 559
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorLabelPadding(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->checkedItem:Landroid/view/MenuItem;

    if-eq v0, p1, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->checkedItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->checkedItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x1

    .line 193
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 194
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->checkedItem:Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method

.method public setCollapsedMaxItemCount(I)V
    .locals 0

    .line 1354
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->collapsedMaxItemCount:I

    return-void
.end method

.method public setExpanded(Z)V
    .locals 4

    .line 199
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->expanded:Z

    .line 200
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_0

    .line 201
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 202
    invoke-interface {v3, p1}, Lcom/google/android/material/navigation/NavigationBarMenuItemView;->setExpanded(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHorizontalItemTextAppearanceActive(I)V
    .locals 5

    .line 415
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->horizontalItemTextAppearanceActive:I

    .line 416
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 417
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 418
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 419
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setHorizontalTextAppearanceActive(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHorizontalItemTextAppearanceInactive(I)V
    .locals 5

    .line 386
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->horizontalItemTextAppearanceInactive:I

    .line 387
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 388
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 389
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 390
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setHorizontalTextAppearanceInactive(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIconLabelHorizontalSpacing(I)V
    .locals 5

    .line 581
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->iconLabelHorizontalSpacing:I

    .line 582
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 583
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 584
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 585
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 586
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconLabelHorizontalSpacing(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 5

    .line 240
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 241
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 242
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 243
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 244
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 899
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    .line 900
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz p1, :cond_1

    .line 901
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 902
    instance-of v3, v2, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v3, :cond_0

    .line 903
    check-cast v2, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 904
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 5

    .line 607
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    .line 608
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 609
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 610
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 611
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemActiveIndicatorExpandedHeight(I)V
    .locals 5

    .line 741
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedHeight:I

    .line 742
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 743
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 744
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 745
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorExpandedHeight(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemActiveIndicatorExpandedMarginHorizontal(I)V
    .locals 5

    .line 798
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedMarginHorizontal:I

    .line 799
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 800
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 801
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 802
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 803
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorExpandedMarginHorizontal(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemActiveIndicatorExpandedPadding(IIII)V
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 820
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedPadding:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 821
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedPadding:Landroid/graphics/Rect;

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 822
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedPadding:Landroid/graphics/Rect;

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 823
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz p1, :cond_1

    .line 824
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object p4, p1, p3

    .line 825
    instance-of v0, p4, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_0

    .line 826
    check-cast p4, Lcom/google/android/material/navigation/NavigationBarItemView;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedPadding:Landroid/graphics/Rect;

    .line 827
    invoke-virtual {p4, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorExpandedPadding(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemActiveIndicatorExpandedWidth(I)V
    .locals 5

    .line 714
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorExpandedWidth:I

    .line 715
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 716
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 717
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 718
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorExpandedWidth(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 5

    .line 659
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    .line 660
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 661
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 662
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 663
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorHeight(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 5

    .line 769
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    .line 770
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 771
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 772
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 773
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorMarginHorizontal(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setItemActiveIndicatorResizeable(Z)V
    .locals 5

    .line 873
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    .line 874
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 875
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 876
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 877
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 4

    .line 850
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 851
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz p1, :cond_1

    .line 852
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 853
    instance-of v3, v2, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v3, :cond_0

    .line 854
    check-cast v2, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 855
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 5

    .line 633
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    .line 634
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 635
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 636
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 637
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorWidth(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 948
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 949
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 950
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 951
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 952
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 5

    .line 442
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    .line 443
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 444
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 445
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 446
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemGravity(I)V
    .locals 5

    .line 676
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemGravity:I

    .line 677
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 678
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 679
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 680
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemGravity(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemIconGravity(I)V
    .locals 5

    .line 1041
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconGravity:I

    .line 1042
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 1043
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1044
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 1045
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemIconGravity(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 5

    .line 268
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    .line 269
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 270
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 271
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 272
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .locals 5

    if-nez p2, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1072
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_2

    .line 1073
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1074
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_1

    .line 1075
    invoke-interface {v3}, Lcom/google/android/material/navigation/NavigationBarMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1076
    invoke-interface {v3}, Lcom/google/android/material/navigation/NavigationBarMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 1077
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 4

    .line 488
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    .line 489
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz p1, :cond_1

    .line 490
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 491
    instance-of v3, v2, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v3, :cond_0

    .line 492
    check-cast v2, Lcom/google/android/material/navigation/NavigationBarItemView;

    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingBottom(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 5

    .line 466
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingTop:I

    .line 467
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 468
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 469
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 470
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingTop(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 5

    .line 966
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemRippleColor:Landroid/content/res/ColorStateList;

    .line 967
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 968
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 969
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 970
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    .line 342
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    .line 343
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 344
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 345
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 346
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 5

    .line 358
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActiveBoldEnabled:Z

    .line 359
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 360
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 361
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 362
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActiveBoldEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    .line 316
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    .line 317
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 318
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 319
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 320
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 5

    .line 290
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 291
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 292
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 293
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 294
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLabelFontScalingEnabled(Z)V
    .locals 5

    .line 511
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->scaleLabelWithFont:Z

    .line 512
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 513
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 514
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 515
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 516
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelFontScalingEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLabelMaxLines(I)V
    .locals 5

    .line 527
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelMaxLines:I

    .line 528
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 529
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 530
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 531
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 532
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelMaxLines(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    .line 1020
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    return-void
.end method

.method public setMeasurePaddingFromLabelBaseline(Z)V
    .locals 5

    .line 499
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->measurePaddingFromLabelBaseline:Z

    .line 500
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 501
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 502
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 503
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 504
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setMeasureBottomPaddingFromLabelBaseline(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPresenter(Lcom/google/android/material/navigation/NavigationBarPresenter;)V
    .locals 0

    .line 1105
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    return-void
.end method

.method public setSubmenuDividersEnabled(Z)V
    .locals 5

    .line 1340
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->dividersEnabled:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 1343
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->dividersEnabled:Z

    .line 1344
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_2

    .line 1345
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1346
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarDividerView;

    if-eqz v4, :cond_1

    .line 1347
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarDividerView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarDividerView;->setDividersEnabled(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4

    .line 1377
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1379
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v2, v1}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getItemAt(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1380
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1381
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 1382
    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 1383
    invoke-virtual {p0, v2}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setCheckedItem(Landroid/view/MenuItem;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateActiveIndicator(I)V
    .locals 5

    .line 1516
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-eqz v0, :cond_1

    .line 1517
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1518
    instance-of v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v4, :cond_0

    .line 1519
    check-cast v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateMenuView()V
    .locals 7

    .line 1284
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 1288
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->refreshItems()V

    .line 1289
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 1291
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isMenuStructureSame()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1292
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->buildMenuView()V

    return-void

    .line 1296
    :cond_1
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 1297
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    .line 1300
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v5, v4}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getItemAt(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1301
    invoke-interface {v5}, Landroid/view/MenuItem;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1302
    invoke-virtual {p0, v5}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setCheckedItem(Landroid/view/MenuItem;)V

    .line 1303
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    iput v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    .line 1304
    iput v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1307
    :cond_3
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_4

    .line 1309
    invoke-static {p0, v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 1312
    :cond_4
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 1313
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getCurrentVisibleContentItemCount()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isShifting(II)Z

    move-result v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_7

    .line 1315
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-virtual {v5, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 1316
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    aget-object v5, v5, v4

    iget-boolean v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->expanded:Z

    invoke-interface {v5, v6}, Lcom/google/android/material/navigation/NavigationBarMenuItemView;->setExpanded(Z)V

    .line 1317
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    aget-object v5, v5, v4

    instance-of v6, v5, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v6, :cond_5

    .line 1318
    check-cast v5, Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 1319
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    .line 1320
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconGravity:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemIconGravity(I)V

    .line 1321
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemGravity:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemGravity(I)V

    .line 1322
    invoke-virtual {v5, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setShifting(Z)V

    .line 1324
    :cond_5
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v5, v4}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getItemAt(I)Landroid/view/MenuItem;

    move-result-object v5

    instance-of v5, v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v5, :cond_6

    .line 1325
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarMenuItemView;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Lcom/google/android/material/navigation/NavigationBarMenuBuilder;

    invoke-virtual {v6, v4}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->getItemAt(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-interface {v5, v6, v2}, Lcom/google/android/material/navigation/NavigationBarMenuItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 1327
    :cond_6
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-virtual {v5, v2}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method
