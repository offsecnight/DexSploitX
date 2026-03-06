.class public final Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "MultiBrowseCarouselStrategy.java"


# static fields
.field private static final MEDIUM_COUNTS:[I

.field private static final SMALL_COUNTS:[I


# instance fields
.field private keylineCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 51
    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    const/4 v1, 0x0

    .line 52
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    return-void
.end method


# virtual methods
.method ensureArrangementFitsItemCount(Lcom/google/android/material/carousel/Arrangement;I)Z
    .locals 3

    .line 174
    invoke-virtual {p1}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 p2, 0x1

    if-lez v0, :cond_1

    .line 175
    iget v1, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-gtz v1, :cond_0

    iget v1, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-le v1, p2, :cond_1

    :cond_0
    move v1, p2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_4

    .line 179
    iget v2, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-lez v2, :cond_2

    .line 180
    iget v2, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    sub-int/2addr v2, p2

    iput v2, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    goto :goto_1

    .line 181
    :cond_2
    iget v2, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-le v2, p2, :cond_3

    .line 183
    iget v2, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    sub-int/2addr v2, p2

    iput v2, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 19

    move-object/from16 v0, p0

    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v1

    .line 63
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v1

    .line 67
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 68
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    .line 71
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallItemSizeMin()F

    move-result v2

    add-float v7, v2, v3

    .line 77
    invoke-virtual {v0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallItemSizeMax()F

    move-result v2

    add-float/2addr v2, v3

    .line 78
    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float v2, v4, v3

    int-to-float v5, v1

    .line 80
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v4, v2

    add-float/2addr v4, v3

    add-float v2, v7, v3

    add-float v6, v8, v3

    .line 86
    invoke-static {v4, v2, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v6

    add-float v2, v12, v6

    const/high16 v4, 0x40000000    # 2.0f

    div-float v10, v2, v4

    .line 97
    sget-object v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    mul-float/2addr v4, v7

    cmpg-float v9, v5, v4

    const/4 v11, 0x0

    const/4 v14, 0x1

    if-gtz v9, :cond_2

    .line 102
    new-array v2, v14, [I

    aput v11, v2, v11

    .line 105
    :cond_2
    sget-object v9, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    .line 106
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v13

    if-ne v13, v14, :cond_3

    .line 107
    invoke-static {v2}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->doubleCounts([I)[I

    move-result-object v2

    .line 108
    invoke-static {v9}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->doubleCounts([I)[I

    move-result-object v9

    :cond_3
    move-object/from16 v18, v9

    move-object v9, v2

    move v2, v11

    move-object/from16 v11, v18

    .line 115
    invoke-static {v11}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    sub-float v13, v5, v13

    .line 116
    invoke-static {v9}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v8

    sub-float/2addr v13, v15

    div-float/2addr v13, v12

    move v15, v3

    float-to-double v2, v13

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    move/from16 v16, v14

    move/from16 v17, v15

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    div-float v3, v5, v12

    float-to-double v13, v3

    .line 118
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v3, v13

    sub-int v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 119
    new-array v13, v2, [I

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v2, :cond_4

    sub-int v15, v3, v14

    .line 121
    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 124
    :cond_4
    invoke-static/range {v5 .. v13}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v3

    iput v3, v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    .line 138
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->ensureArrangementFitsItemCount(Lcom/google/android/material/carousel/Arrangement;I)Z

    move-result v3

    .line 142
    iget v9, v2, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-nez v9, :cond_5

    iget v9, v2, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-nez v9, :cond_5

    cmpl-float v4, v5, v4

    if-lez v4, :cond_5

    move/from16 v4, v16

    .line 145
    iput v4, v2, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    move v14, v4

    goto :goto_1

    :cond_5
    move v14, v3

    :goto_1
    if-eqz v14, :cond_6

    .line 152
    iget v3, v2, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    filled-new-array {v3}, [I

    move-result-object v9

    iget v3, v2, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    filled-new-array {v3}, [I

    move-result-object v11

    iget v2, v2, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    filled-new-array {v2}, [I

    move-result-object v13

    .line 153
    invoke-static/range {v5 .. v13}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v2

    .line 166
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 170
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v4

    move/from16 v15, v17

    .line 165
    invoke-static {v3, v15, v1, v2, v4}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->createKeylineState(Landroid/content/Context;FILcom/google/android/material/carousel/Arrangement;I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v1

    return-object v1
.end method

.method public shouldRefreshKeylineState(Lcom/google/android/material/carousel/Carousel;I)Z
    .locals 2

    .line 195
    iget v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge p2, v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-lt p2, v0, :cond_2

    .line 196
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result p1

    iget p2, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
