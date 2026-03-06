.class public Lcom/google/android/material/internal/BaselineLayout;
.super Landroid/view/ViewGroup;
.source "BaselineLayout.java"


# instance fields
.field private baseline:I

.field private measurePaddingFromBaseline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getChildCount()I

    move-result p1

    .line 101
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p4, p2

    .line 102
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p4, p3

    .line 104
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingTop()I

    move-result p2

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p1, :cond_2

    .line 107
    invoke-virtual {p0, p5}, Lcom/google/android/material/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 112
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, v1

    .line 115
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    .line 117
    iget v4, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 118
    iget v4, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    add-int/2addr v4, p2

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    .line 123
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v2

    move v8, v7

    :goto_0
    if-ge v1, v0, :cond_2

    .line 65
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 66
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {p0, v9, p1, p2}, Lcom/google/android/material/internal/BaselineLayout;->measureChild(Landroid/view/View;II)V

    .line 71
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 72
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v10

    if-eq v10, v2, :cond_1

    .line 74
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 75
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v10

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 77
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 78
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 79
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    invoke-static {v6, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eq v7, v2, :cond_4

    .line 82
    iget-boolean v0, p0, Lcom/google/android/material/internal/BaselineLayout;->measurePaddingFromBaseline:Z

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingBottom()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v7

    .line 84
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v0

    .line 86
    :cond_3
    iput v7, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    .line 89
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/material/internal/BaselineLayout;->measurePaddingFromBaseline:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingBottom()I

    move-result v0

    add-int v4, v3, v0

    .line 90
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getSuggestedMinimumHeight()I

    move-result v0

    .line 88
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 93
    invoke-static {v1, p1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v1, v6, 0x10

    .line 94
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/BaselineLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMeasurePaddingFromBaseline(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/google/android/material/internal/BaselineLayout;->measurePaddingFromBaseline:Z

    return-void
.end method
