.class public Lcom/google/android/material/navigationrail/NavigationRailMenuView;
.super Lcom/google/android/material/navigation/NavigationBarMenuView;
.source "NavigationRailMenuView.java"


# instance fields
.field private itemMinimumHeight:I

.field private itemSpacing:I

.field private final layoutParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemSpacing:I

    .line 42
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x31

    .line 48
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemActiveIndicatorResizeable(Z)V

    return-void
.end method

.method private makeSharedHeightSpec(III)I
    .locals 1

    const/4 v0, 0x1

    .line 109
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    div-int/2addr p2, p3

    .line 113
    iget p3, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 116
    :goto_0
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private measureChildHeight(Landroid/view/View;II)I
    .locals 0

    .line 177
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 p3, 0x8

    if-eq p2, p3, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private measureSharedChildHeights(IIILandroid/view/View;)I
    .locals 7

    const/4 v0, 0x0

    .line 137
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 138
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildCount()I

    move-result v2

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    .line 141
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 142
    instance-of v6, v5, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-nez v6, :cond_0

    .line 143
    invoke-direct {p0, v5, p1, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureChildHeight(Landroid/view/View;II)I

    move-result v5

    sub-int/2addr p2, v5

    add-int/2addr v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-nez p4, :cond_2

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    move-result p2

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_1
    move p3, v0

    move v1, p3

    :goto_2
    if-ge p3, v2, :cond_5

    .line 163
    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 168
    :cond_3
    instance-of v5, v3, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v5, :cond_4

    if-eq v3, p4, :cond_4

    .line 169
    invoke-direct {p0, v3, p1, p2}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureChildHeight(Landroid/view/View;II)I

    move-result v3

    add-int/2addr v4, v3

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemSpacing:I

    mul-int/2addr p1, p2

    add-int/2addr v4, p1

    return v4
.end method

.method private measureShiftingChildHeights(III)I
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    move-result v1

    .line 125
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureChildHeight(Landroid/view/View;II)I

    move-result v1

    sub-int/2addr p2, v1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 131
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureSharedChildHeights(IIILandroid/view/View;)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method protected createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 1

    .line 105
    new-instance v0, Lcom/google/android/material/navigationrail/NavigationRailItemView;

    invoke-direct {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getItemMinimumHeight()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    return v0
.end method

.method public getItemSpacing()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemSpacing:I

    return v0
.end method

.method getMenuGravity()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 76
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    const/4 p2, 0x0

    move p3, p2

    move p5, p3

    move v0, p5

    :goto_0
    const/16 v1, 0x8

    if-ge p3, p1, :cond_1

    .line 81
    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p5, p5, 0x1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    if-gt p5, p3, :cond_2

    move p3, p2

    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr p5, p3

    div-int/2addr v2, p5

    iget p3, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemSpacing:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    :goto_1
    move p5, p2

    move v0, p5

    :goto_2
    if-ge p5, p1, :cond_4

    .line 93
    invoke-virtual {p0, p5}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v4, v3, v0

    .line 96
    invoke-virtual {v2, p2, v0, p4, v4}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v3, p3

    add-int/2addr v0, v3

    :cond_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 55
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getCurrentVisibleContentItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getLabelVisibilityMode()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->isShifting(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureShiftingChildHeights(III)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureSharedChildHeights(IIILandroid/view/View;)I

    move-result v0

    .line 70
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    .line 71
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setItemMinimumHeight(I)V
    .locals 1

    .line 197
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    if-eq v0, p1, :cond_0

    .line 198
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    .line 199
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setItemSpacing(I)V
    .locals 1

    .line 209
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemSpacing:I

    if-eq v0, p1, :cond_0

    .line 210
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemSpacing:I

    .line 211
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->requestLayout()V

    :cond_0
    return-void
.end method

.method setMenuGravity(I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v0, p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 188
    iget-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
