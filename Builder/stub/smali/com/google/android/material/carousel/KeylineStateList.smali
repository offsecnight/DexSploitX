.class public Lcom/google/android/material/carousel/KeylineStateList;
.super Ljava/lang/Object;
.source "KeylineStateList.java"


# static fields
.field private static final NO_INDEX:I = -0x1


# instance fields
.field private final defaultState:Lcom/google/android/material/carousel/KeylineState;

.field private final endShiftRange:F

.field private final endStateSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field private final endStateStepsInterpolationPoints:[F

.field private final startShiftRange:F

.field private final startStateSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field private final startStateStepsInterpolationPoints:[F


# direct methods
.method private constructor <init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/KeylineState;",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    .line 69
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 70
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 75
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 76
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    .line 78
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p1

    iget p1, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 79
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    .line 84
    invoke-static {v0, p2, v1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/List;Z)[F

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateStepsInterpolationPoints:[F

    const/4 p2, 0x0

    .line 87
    invoke-static {p1, p3, p2}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/List;Z)[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateStepsInterpolationPoints:[F

    return-void
.end method

.method private closestStateStepFromInterpolation(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)",
            "Lcom/google/android/material/carousel/KeylineState;"
        }
    .end annotation

    .line 281
    invoke-static {p1, p2, p3}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsRange(Ljava/util/List;F[F)[F

    move-result-object p2

    const/4 p3, 0x0

    .line 287
    aget p3, p2, p3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_0

    const/4 p3, 0x2

    .line 288
    aget p2, p2, p3

    float-to-int p2, p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/KeylineState;

    return-object p1

    :cond_0
    const/4 p3, 0x1

    .line 290
    aget p2, p2, p3

    float-to-int p2, p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/KeylineState;

    return-object p1
.end method

.method private static findFirstIndexAfterLastFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I
    .locals 2

    .line 761
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v0

    .line 762
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static findFirstNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I
    .locals 2

    const/4 v0, 0x0

    .line 783
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-boolean v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static findLastIndexBeforeFirstFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I
    .locals 2

    .line 772
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 774
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static findLastNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I
    .locals 2

    .line 793
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 794
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-boolean v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static from(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineStateList;
    .locals 1

    .line 98
    new-instance v0, Lcom/google/android/material/carousel/KeylineStateList;

    .line 100
    invoke-static {p0, p1, p2, p3, p5}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsStart(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Ljava/util/List;

    move-result-object p3

    .line 101
    invoke-static {p0, p1, p2, p4, p5}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsEnd(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p1, p3, p0}, Lcom/google/android/material/carousel/KeylineStateList;-><init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static getStateStepInterpolationPoints(FLjava/util/List;Z)[F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;Z)[F"
        }
    .end annotation

    .line 323
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 324
    new-array v1, v0, [F

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, -0x1

    .line 329
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState;

    .line 330
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState;

    if-eqz p2, :cond_0

    .line 334
    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v5, v4

    goto :goto_1

    .line 335
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float v5, v4, v5

    :goto_1
    div-float/2addr v5, p0

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    .line 339
    :cond_1
    aget v3, v1, v3

    add-float/2addr v3, v5

    :goto_2
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static getStateStepsEnd(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/Carousel;",
            "Lcom/google/android/material/carousel/KeylineState;",
            "FF",
            "Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 610
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-static {v0}, Lcom/google/android/material/carousel/KeylineStateList;->findLastNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I

    move-result v8

    .line 614
    invoke-interface/range {p0 .. p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v1

    :goto_0
    move v11, v1

    .line 619
    invoke-static/range {p0 .. p1}, Lcom/google/android/material/carousel/KeylineStateList;->isLastFocalItemVisibleAtRightOfContainer(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    const/4 v1, -0x1

    if-ne v8, v1, :cond_1

    goto/16 :goto_3

    .line 635
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v1

    sub-int v1, v8, v1

    .line 639
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 640
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    if-gtz v1, :cond_2

    .line 642
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_2

    .line 646
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    sub-float/2addr v3, v1

    sub-float v3, v3, p3

    .line 647
    invoke-static {v0, v3, v11}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylinesAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;FI)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6

    :cond_2
    const/4 v4, 0x0

    move v7, v2

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_6

    .line 654
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/carousel/KeylineState;

    sub-int v10, v8, v5

    .line 656
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v12, v12, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    add-float v15, v7, v12

    add-int/lit8 v10, v10, 0x1

    .line 661
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v10, v7, :cond_3

    .line 662
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v7, v7, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 664
    invoke-static {v9, v7}, Lcom/google/android/material/carousel/KeylineStateList;->findLastIndexBeforeFirstFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move v7, v4

    .line 669
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v10

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x1

    .line 670
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v12

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    move v13, v11

    move v11, v10

    sub-float v10, v3, v15

    move-object/from16 v16, v9

    move v9, v7

    move-object/from16 v7, v16

    .line 672
    invoke-static/range {v7 .. v13}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v9

    add-int/lit8 v7, v1, -0x1

    if-ne v5, v7, :cond_4

    cmpl-float v7, p3, v2

    if-lez v7, :cond_4

    const/4 v12, 0x0

    move/from16 v10, p3

    move-object/from16 v14, p4

    move v11, v13

    move/from16 v13, p2

    .line 682
    invoke-static/range {v9 .. v14}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v9

    move v13, v11

    .line 690
    :cond_4
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move v11, v13

    move v7, v15

    goto :goto_1

    :cond_5
    :goto_3
    move v13, v11

    cmpl-float v1, p3, v2

    if-lez v1, :cond_6

    const/4 v3, 0x0

    move/from16 v4, p2

    move/from16 v1, p3

    move-object/from16 v5, p4

    move v2, v13

    .line 624
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    .line 623
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v6
.end method

.method private static getStateStepsRange(Ljava/util/List;F[F)[F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)[F"
        }
    .end annotation

    .line 257
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    .line 260
    aget v1, p2, v0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, p0, :cond_1

    .line 262
    aget v5, p2, v3

    cmpg-float v6, p1, v5

    if-gtz v6, :cond_0

    add-int/lit8 p0, v3, -0x1

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 267
    invoke-static {v6, p2, v1, v5, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    int-to-float p0, p0

    int-to-float p2, v3

    .line 268
    new-array v1, v4, [F

    aput p1, v1, v0

    aput p0, v1, v2

    const/4 p0, 0x2

    aput p2, v1, p0

    return-object v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 275
    :cond_1
    new-array p0, v4, [F

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static getStateStepsStart(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/Carousel;",
            "Lcom/google/android/material/carousel/KeylineState;",
            "FF",
            "Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 503
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 504
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-static {v0}, Lcom/google/android/material/carousel/KeylineStateList;->findFirstNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I

    move-result v8

    .line 507
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result p0

    :goto_0
    move v11, p0

    .line 512
    invoke-static {v0}, Lcom/google/android/material/carousel/KeylineStateList;->isFirstFocalItemAtLeftOfContainer(Lcom/google/android/material/carousel/KeylineState;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_5

    const/4 p0, -0x1

    if-ne v8, p0, :cond_1

    goto/16 :goto_2

    .line 528
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result p0

    sub-int/2addr p0, v8

    .line 531
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 532
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    if-gtz p0, :cond_2

    .line 534
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_2

    .line 538
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    add-float/2addr v2, p0

    add-float v2, v2, p3

    .line 540
    invoke-static {v0, v2, v11}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylinesAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;FI)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    .line 539
    invoke-interface {v6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6

    :cond_2
    const/4 v3, 0x0

    move v4, v1

    :goto_1
    if-ge v3, p0, :cond_6

    .line 549
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/google/android/material/carousel/KeylineState;

    add-int v5, v8, v3

    .line 554
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 555
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v10, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    add-float/2addr v4, v10

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_3

    .line 557
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 559
    invoke-static {v7, v5}, Lcom/google/android/material/carousel/KeylineStateList;->findFirstIndexAfterLastFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I

    move-result v5

    add-int/lit8 v9, v5, -0x1

    .line 563
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v5

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    .line 564
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v10

    sub-int/2addr v10, v3

    add-int/lit8 v12, v10, -0x1

    add-float v10, v2, v4

    move v13, v11

    move v11, v5

    .line 567
    invoke-static/range {v7 .. v13}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v9

    move v11, v13

    add-int/lit8 v5, p0, -0x1

    if-ne v3, v5, :cond_4

    cmpl-float v5, p3, v1

    if-lez v5, :cond_4

    const/4 v12, 0x1

    move/from16 v13, p2

    move/from16 v10, p3

    move-object/from16 v14, p4

    .line 578
    invoke-static/range {v9 .. v14}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v9

    .line 586
    :cond_4
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    cmpl-float p0, p3, v1

    if-lez p0, :cond_6

    const/4 v3, 0x1

    move/from16 v4, p2

    move/from16 v1, p3

    move-object/from16 v5, p4

    move v2, v11

    .line 516
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    .line 515
    invoke-interface {v6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v6
.end method

.method private static isFirstFocalItemAtLeftOfContainer(Lcom/google/android/material/carousel/KeylineState;)Z
    .locals 3

    .line 355
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isLastFocalItemVisibleAtRightOfContainer(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Z
    .locals 3

    .line 371
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    .line 372
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    .line 376
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    iget p0, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p0, v1

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_1

    .line 378
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)",
            "Lcom/google/android/material/carousel/KeylineState;"
        }
    .end annotation

    .line 236
    invoke-static {p0, p1, p2}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsRange(Ljava/util/List;F[F)[F

    move-result-object p1

    const/4 p2, 0x1

    .line 237
    aget p2, p1, p2

    float-to-int p2, p2

    .line 238
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/carousel/KeylineState;

    const/4 v0, 0x2

    aget v0, p1, v0

    float-to-int v0, v0

    .line 239
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState;

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 237
    invoke-static {p2, p0, p1}, Lcom/google/android/material/carousel/KeylineState;->lerp(Lcom/google/android/material/carousel/KeylineState;Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method

.method private static moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;
    .locals 8

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 741
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 742
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 744
    new-instance v1, Lcom/google/android/material/carousel/KeylineState$Builder;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p0

    invoke-direct {v1, p0, p6}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    const/4 p0, 0x0

    move p1, p0

    .line 746
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 747
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 748
    iget p6, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p6, v2

    add-float v2, p3, p6

    if-lt p1, p4, :cond_0

    if-gt p1, p5, :cond_0

    const/4 p6, 0x1

    move v5, p6

    goto :goto_1

    :cond_0
    move v5, p0

    .line 753
    :goto_1
    iget v3, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v4, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget-boolean v6, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    iget v7, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 754
    iget p2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    add-float/2addr p3, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 757
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method

.method private static shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;
    .locals 1

    .line 385
    sget-object v0, Lcom/google/android/material/carousel/KeylineStateList$1;->$SwitchMap$com$google$android$material$carousel$CarouselStrategy$StrategyType:[I

    invoke-virtual {p5}, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->ordinal()I

    move-result p5

    aget p5, v0, p5

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    .line 390
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPaddingUncontained(Lcom/google/android/material/carousel/KeylineState;FIZ)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0

    .line 387
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPaddingContained(Lcom/google/android/material/carousel/KeylineState;FIZF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method

.method private static shiftKeylineStateForPaddingContained(Lcom/google/android/material/carousel/KeylineState;FIZF)Lcom/google/android/material/carousel/KeylineState;
    .locals 16

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 435
    new-instance v2, Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    move/from16 v3, p2

    invoke-direct {v2, v1, v3}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getNumberOfNonAnchorKeylines()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    const/4 v11, 0x0

    if-eqz p3, :cond_0

    move/from16 v3, p1

    goto :goto_0

    :cond_0
    move v3, v11

    :goto_0
    const/4 v12, 0x0

    move v13, v3

    move v14, v12

    .line 445
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_5

    .line 446
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 447
    iget-boolean v4, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-eqz v4, :cond_1

    .line 448
    iget v4, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    move v5, v4

    iget v4, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    move v6, v5

    iget v5, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/4 v7, 0x1

    iget v8, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    move v3, v6

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move/from16 v15, p4

    goto :goto_5

    .line 459
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v4

    if-lt v14, v4, :cond_2

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v4

    if-gt v14, v4, :cond_2

    const/4 v4, 0x1

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v12

    .line 462
    :goto_2
    iget v4, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    sub-float v5, v4, v1

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v4

    move/from16 v15, p4

    .line 464
    invoke-static {v5, v4, v15}, Lcom/google/android/material/carousel/CarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v5, v7

    add-float/2addr v7, v13

    .line 468
    iget v8, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 470
    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    if-eqz p3, :cond_3

    move v9, v8

    goto :goto_3

    :cond_3
    move v9, v11

    :goto_3
    if-eqz p3, :cond_4

    move v10, v11

    goto :goto_4

    :cond_4
    move v10, v8

    :goto_4
    move v8, v3

    move v3, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZFFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    add-float/2addr v13, v5

    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 481
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method private static shiftKeylineStateForPaddingUncontained(Lcom/google/android/material/carousel/KeylineState;FIZ)Lcom/google/android/material/carousel/KeylineState;
    .locals 17

    move/from16 v0, p2

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 399
    new-instance v3, Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v2

    invoke-direct {v3, v2, v0}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    const/4 v12, 0x1

    if-eqz p3, :cond_0

    const/4 v13, 0x0

    goto :goto_0

    .line 401
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    move v13, v4

    :goto_0
    const/4 v14, 0x0

    .line 402
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_7

    .line 403
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 404
    iget-boolean v5, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-eqz v5, :cond_1

    if-ne v14, v13, :cond_1

    .line 405
    iget v5, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    move v6, v5

    iget v5, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    move v7, v6

    iget v6, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/4 v8, 0x1

    iget v9, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    move v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;

    goto :goto_7

    .line 408
    :cond_1
    iget v5, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    if-eqz p3, :cond_2

    add-float v5, v5, p1

    goto :goto_2

    :cond_2
    sub-float v5, v5, p1

    :goto_2
    const/4 v6, 0x0

    if-eqz p3, :cond_3

    move/from16 v10, p1

    goto :goto_3

    :cond_3
    move v10, v6

    :goto_3
    if-eqz p3, :cond_4

    move v11, v6

    goto :goto_4

    :cond_4
    move/from16 v11, p1

    .line 412
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v7

    if-lt v14, v7, :cond_5

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v7

    if-gt v14, v7, :cond_5

    move v7, v12

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    move v8, v5

    .line 414
    iget v5, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v9, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    move v15, v8

    iget-boolean v8, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    const/high16 v16, 0x40000000    # 2.0f

    if-eqz p3, :cond_6

    .line 422
    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    div-float v4, v4, v16

    add-float/2addr v4, v15

    int-to-float v2, v0

    sub-float/2addr v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_6

    .line 423
    :cond_6
    iget v2, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    div-float v2, v2, v16

    sub-float v2, v15, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 420
    :goto_6
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move v6, v9

    move v4, v15

    move v9, v2

    .line 414
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZFFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 427
    :cond_7
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method private static shiftKeylinesAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;FI)Lcom/google/android/material/carousel/KeylineState;
    .locals 7

    .line 713
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v4

    .line 714
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v6, p2

    .line 708
    invoke-static/range {v0 .. v6}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getDefaultState()Lcom/google/android/material/carousel/KeylineState;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method

.method getEndState()Lcom/google/android/material/carousel/KeylineState;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method

.method getKeylineStateForPositionMap(IIIZ)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    .line 805
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v3, p1, :cond_4

    if-eqz p4, :cond_0

    sub-int v7, p1, v3

    sub-int/2addr v7, v6

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    int-to-float v8, v7

    mul-float/2addr v8, v0

    if-eqz p4, :cond_1

    goto :goto_2

    :cond_1
    move v5, v6

    :goto_2
    int-to-float v5, v5

    mul-float/2addr v8, v5

    int-to-float v5, p3

    .line 813
    iget v9, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    sub-float/2addr v5, v9

    cmpl-float v5, v8, v5

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 814
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int v5, p1, v5

    if-lt v3, v5, :cond_3

    .line 816
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 817
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v4, v2, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/carousel/KeylineState;

    .line 815
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 p3, p1, -0x1

    move v3, v2

    :goto_3
    if-ltz p3, :cond_9

    if-eqz p4, :cond_5

    sub-int v4, p1, p3

    sub-int/2addr v4, v6

    goto :goto_4

    :cond_5
    move v4, p3

    :goto_4
    int-to-float v7, v4

    mul-float/2addr v7, v0

    if-eqz p4, :cond_6

    move v8, v5

    goto :goto_5

    :cond_6
    move v8, v6

    :goto_5
    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v8, p2

    .line 828
    iget v9, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_7

    iget-object v7, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p3, v7, :cond_8

    .line 832
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 833
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v3, v2, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/carousel/KeylineState;

    .line 831
    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_8
    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_9
    return-object v1
.end method

.method public getShiftedState(FFF)Lcom/google/android/material/carousel/KeylineState;
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/carousel/KeylineStateList;->getShiftedState(FFFZ)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    return-object p1
.end method

.method getShiftedState(FFFZ)Lcom/google/android/material/carousel/KeylineState;
    .locals 5

    .line 168
    iget v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    add-float/2addr v0, p2

    .line 169
    iget v1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    sub-float v1, p3, v1

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineStateList;->getStartState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->leftOrTopPaddingShift:F

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineStateList;->getEndState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->rightOrBottomPaddingShift:F

    .line 182
    iget v4, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_0

    add-float/2addr v0, v2

    .line 186
    :cond_0
    iget v2, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    sub-float/2addr v1, v3

    :cond_1
    cmpg-float v2, p1, v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v2, :cond_2

    .line 194
    invoke-static {v4, v3, p2, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    .line 200
    iget-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 201
    iget-object p3, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateStepsInterpolationPoints:[F

    goto :goto_0

    :cond_2
    cmpl-float p2, p1, v1

    if-lez p2, :cond_4

    .line 204
    invoke-static {v3, v4, v1, p3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    .line 210
    iget-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 211
    iget-object p3, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateStepsInterpolationPoints:[F

    :goto_0
    if-eqz p4, :cond_3

    .line 217
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/material/carousel/KeylineStateList;->closestStateStepFromInterpolation(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    return-object p1

    .line 219
    :cond_3
    invoke-static {p2, p1, p3}, Lcom/google/android/material/carousel/KeylineStateList;->lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    return-object p1

    .line 213
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    return-object p1
.end method

.method getStartState()Lcom/google/android/material/carousel/KeylineState;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method
