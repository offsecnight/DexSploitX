.class public Lcom/google/android/material/carousel/HeroCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "HeroCarouselStrategy.java"


# static fields
.field private static final MEDIUM_COUNTS:[I

.field private static final SMALL_COUNTS:[I


# instance fields
.field private keylineCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 48
    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/carousel/HeroCarouselStrategy;->SMALL_COUNTS:[I

    const/4 v1, 0x0

    .line 49
    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->MEDIUM_COUNTS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->keylineCount:I

    return-void
.end method


# virtual methods
.method public onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 16

    .line 59
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    .line 60
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    .line 64
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 65
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 69
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    .line 74
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/HeroCarouselStrategy;->getSmallItemSizeMin()F

    move-result v1

    add-float v6, v1, v2

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/HeroCarouselStrategy;->getSmallItemSizeMax()F

    move-result v1

    add-float/2addr v1, v2

    .line 77
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float v1, v3, v2

    int-to-float v4, v0

    .line 79
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    add-float v1, v6, v2

    add-float v5, v7, v2

    .line 84
    invoke-static {v3, v1, v5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    add-float v1, v11, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v1, v3

    .line 90
    sget-object v1, Lcom/google/android/material/carousel/HeroCarouselStrategy;->SMALL_COUNTS:[I

    mul-float/2addr v3, v6

    cmpg-float v3, v4, v3

    const/4 v13, 0x0

    const/4 v8, 0x1

    if-gez v3, :cond_2

    .line 92
    new-array v3, v8, [I

    aput v13, v3, v13

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 97
    :goto_0
    invoke-static {v1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    sub-float v1, v4, v1

    div-float/2addr v1, v11

    float-to-double v14, v1

    .line 98
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    move v10, v8

    move v1, v9

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v8, v8

    div-float v9, v4, v11

    float-to-double v14, v9

    .line 99
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v9, v14

    sub-int/2addr v9, v8

    add-int/2addr v9, v10

    .line 100
    new-array v12, v9, [I

    move v14, v13

    :goto_1
    if-ge v14, v9, :cond_3

    add-int v15, v8, v14

    .line 102
    aput v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 105
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v8

    if-ne v8, v10, :cond_4

    move v14, v10

    goto :goto_2

    :cond_4
    move v14, v13

    :goto_2
    if-eqz v14, :cond_5

    .line 113
    invoke-static {v3}, Lcom/google/android/material/carousel/HeroCarouselStrategy;->doubleCounts([I)[I

    move-result-object v8

    goto :goto_3

    :cond_5
    move-object v8, v3

    :goto_3
    if-eqz v14, :cond_6

    .line 117
    sget-object v9, Lcom/google/android/material/carousel/HeroCarouselStrategy;->MEDIUM_COUNTS:[I

    invoke-static {v9}, Lcom/google/android/material/carousel/HeroCarouselStrategy;->doubleCounts([I)[I

    move-result-object v9

    goto :goto_4

    .line 118
    :cond_6
    sget-object v9, Lcom/google/android/material/carousel/HeroCarouselStrategy;->MEDIUM_COUNTS:[I

    :goto_4
    move-object v10, v9

    move v9, v1

    .line 107
    invoke-static/range {v4 .. v12}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v8

    move-object/from16 v15, p0

    iput v8, v15, Lcom/google/android/material/carousel/HeroCarouselStrategy;->keylineCount:I

    .line 125
    invoke-virtual {v1}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v8

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v10

    if-le v8, v10, :cond_7

    .line 127
    sget-object v10, Lcom/google/android/material/carousel/HeroCarouselStrategy;->MEDIUM_COUNTS:[I

    move-object v8, v3

    .line 128
    invoke-static/range {v4 .. v12}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v1

    goto :goto_5

    :cond_7
    move v13, v14

    .line 141
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 140
    invoke-static {v3, v2, v0, v1, v13}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->createKeylineState(Landroid/content/Context;FILcom/google/android/material/carousel/Arrangement;I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method public shouldRefreshKeylineState(Lcom/google/android/material/carousel/Carousel;I)Z
    .locals 3

    .line 152
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->keylineCount:I

    if-ge p2, v0, :cond_0

    .line 153
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v0

    iget v2, p0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->keylineCount:I

    if-ge v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->keylineCount:I

    if-lt p2, v0, :cond_2

    .line 154
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result p1

    iget p2, p0, Lcom/google/android/material/carousel/HeroCarouselStrategy;->keylineCount:I

    if-ge p1, p2, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
