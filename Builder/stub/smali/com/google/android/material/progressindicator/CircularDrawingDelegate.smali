.class final Lcom/google/android/material/progressindicator/CircularDrawingDelegate;
.super Lcom/google/android/material/progressindicator/DrawingDelegate;
.source "CircularDrawingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/DrawingDelegate<",
        "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final QUARTER_CIRCLE_CONTROL_HANDLE_LENGTH:F = 0.5522848f

.field private static final ROUND_CAP_RAMP_DOWN_THRESHHOLD:F = 0.01f


# instance fields
.field private adjustedRadius:F

.field private adjustedWavelength:F

.field private final arcBounds:Landroid/graphics/RectF;

.field private cachedAmplitude:F

.field private cachedRadius:F

.field private cachedWavelength:I

.field private displayedAmplitude:F

.field private displayedCornerRadius:F

.field private displayedTrackThickness:F

.field private drawingDeterminateIndicator:Z

.field private final endPoints:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">.PathPoint;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">.PathPoint;>;"
        }
    .end annotation
.end field

.field private totalTrackLengthFraction:F


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/DrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    .line 69
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->arcBounds:Landroid/graphics/RectF;

    .line 70
    new-instance p1, Landroid/util/Pair;

    new-instance v0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;-><init>(Lcom/google/android/material/progressindicator/DrawingDelegate;)V

    new-instance v1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;-><init>(Lcom/google/android/material/progressindicator/DrawingDelegate;)V

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->endPoints:Landroid/util/Pair;

    return-void
.end method

.method private appendCubicPerHalfCycle(Landroid/graphics/Path;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">.PathPoint;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">.PathPoint;)V"
        }
    .end annotation

    .line 504
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedWavelength:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3ef5c28f    # 0.48f

    mul-float/2addr v0, v1

    .line 505
    new-instance v1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-direct {v1, p0, p2}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;-><init>(Lcom/google/android/material/progressindicator/DrawingDelegate;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;)V

    .line 506
    new-instance p2, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-direct {p2, p0, p3}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;-><init>(Lcom/google/android/material/progressindicator/DrawingDelegate;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;)V

    .line 507
    invoke-virtual {v1, v0}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->moveAlong(F)V

    neg-float v0, v0

    .line 508
    invoke-virtual {p2, v0}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->moveAlong(F)V

    .line 509
    iget-object v0, v1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    const/4 v2, 0x0

    aget v4, v0, v2

    iget-object v0, v1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    const/4 v1, 0x1

    aget v5, v0, v1

    iget-object v0, p2, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v6, v0, v2

    iget-object p2, p2, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v7, p2, v1

    iget-object p2, p3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v8, p2, v2

    iget-object p2, p3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v9, p2, v1

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-void
.end method

.method private calculateDisplayedPath(Landroid/graphics/PathMeasure;Landroid/graphics/Path;Landroid/util/Pair;FFFF)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PathMeasure;",
            "Landroid/graphics/Path;",
            "Landroid/util/Pair<",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">.PathPoint;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">.PathPoint;>;FFFF)V"
        }
    .end annotation

    .line 526
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedAmplitude:F

    mul-float/2addr v0, p6

    .line 528
    iget-boolean p6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawingDeterminateIndicator:Z

    if-eqz p6, :cond_0

    iget-object p6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p6, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p6, p6, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->wavelengthDeterminate:I

    goto :goto_0

    :cond_0
    iget-object p6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p6, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p6, p6, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->wavelengthIndeterminate:I

    .line 529
    :goto_0
    iget v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    iget v2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedRadius:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->activePathMeasure:Landroid/graphics/PathMeasure;

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedAmplitude:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedWavelength:I

    if-eq p6, v1, :cond_2

    .line 532
    :cond_1
    iput v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedAmplitude:F

    .line 533
    iput p6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedWavelength:I

    .line 534
    iget p6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    iput p6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedRadius:F

    .line 535
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->invalidateCachedPaths()V

    .line 537
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    const/4 p6, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 538
    invoke-static {p5, p6, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p5

    .line 540
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-boolean v2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawingDeterminateIndicator:Z

    invoke-virtual {v1, v2}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hasWavyEffect(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    iget v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    float-to-double v1, v1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedWavelength:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    div-float/2addr p7, v1

    add-float/2addr p4, p7

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr p7, v1

    sub-float/2addr p6, p7

    :cond_3
    rem-float/2addr p4, v0

    .line 547
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p7

    mul-float/2addr p7, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p7, v0

    add-float/2addr p4, p5

    .line 548
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p5

    mul-float/2addr p4, p5

    div-float/2addr p4, v0

    const/4 p5, 0x1

    .line 549
    invoke-virtual {p1, p7, p4, p2, p5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 551
    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    .line 552
    invoke-virtual {p5}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->reset()V

    .line 553
    iget-object v0, p5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    iget-object v1, p5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-virtual {p1, p7, v0, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 554
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    .line 555
    invoke-virtual {p3}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->reset()V

    .line 556
    iget-object p7, p3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    iget-object v0, p3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-virtual {p1, p4, p7, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 558
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 559
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p1, p6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 560
    invoke-virtual {p5, p6}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->rotate(F)V

    .line 561
    invoke-virtual {p3, p6}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->rotate(F)V

    .line 562
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private createWavyPath(Landroid/graphics/PathMeasure;Landroid/graphics/Path;F)V
    .locals 10

    .line 466
    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 468
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 470
    iget-boolean v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawingDeterminateIndicator:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->wavelengthDeterminate:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->wavelengthIndeterminate:I

    :goto_0
    int-to-float v1, v1

    div-float v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v3, 0x3

    .line 471
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    div-float/2addr v0, v3

    .line 472
    iput v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedWavelength:F

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    .line 479
    new-instance v5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-direct {v5, p0}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;-><init>(Lcom/google/android/material/progressindicator/DrawingDelegate;)V

    .line 480
    iget v6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedWavelength:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    iget-object v8, v5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    iget-object v9, v5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-virtual {p1, v6, v8, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 481
    new-instance v6, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-direct {v6, p0}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;-><init>(Lcom/google/android/material/progressindicator/DrawingDelegate;)V

    .line 482
    iget v8, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedWavelength:F

    mul-float/2addr v7, v8

    div-float/2addr v8, v2

    add-float/2addr v7, v8

    iget-object v8, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    iget-object v9, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 484
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    mul-float v5, p3, v2

    .line 486
    invoke-virtual {v6, v5}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->moveAcross(F)V

    .line 487
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 491
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    .line 494
    iget-object p3, p1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget p3, p3, v3

    iget-object v1, p1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 495
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_2

    .line 496
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    .line 497
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->appendCubicPerHalfCycle(Landroid/graphics/Path;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;)V

    add-int/lit8 v2, v2, 0x1

    move-object p1, p3

    goto :goto_2

    :cond_2
    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V
    .locals 13

    cmpl-float v1, p4, p3

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    sub-float v1, p4, p3

    goto :goto_0

    :cond_0
    add-float v1, p4, v2

    sub-float v1, v1, p3

    :goto_0
    rem-float v3, p3, v2

    const/4 v8, 0x0

    cmpg-float v4, v3, v8

    if-gez v4, :cond_1

    add-float/2addr v3, v2

    .line 253
    :cond_1
    iget v4, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->totalTrackLengthFraction:F

    cmpg-float v4, v4, v2

    if-gez v4, :cond_2

    add-float v11, v3, v1

    cmpl-float v4, v11, v2

    if-lez v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 255
    invoke-direct/range {v0 .. v10}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move/from16 v7, p7

    move v4, v11

    .line 266
    invoke-direct/range {v0 .. v10}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    return-void

    .line 280
    :cond_2
    iget v5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    iget v6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x3f7d70a4    # 0.99f

    sub-float v6, v1, v6

    cmpl-float v7, v6, v8

    const/high16 v9, 0x40000000    # 2.0f

    if-ltz v7, :cond_3

    mul-float/2addr v6, v5

    const/high16 v7, 0x43340000    # 180.0f

    div-float/2addr v6, v7

    const v7, 0x3c23d70a    # 0.01f

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    if-nez p10, :cond_3

    div-float/2addr v6, v9

    sub-float/2addr v3, v6

    .line 298
    :cond_3
    iget v6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->totalTrackLengthFraction:F

    sub-float v6, v2, v6

    invoke-static {v6, v2, v3}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v2

    .line 299
    iget v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->totalTrackLengthFraction:F

    invoke-static {v8, v3, v1}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v1

    move/from16 v6, p6

    int-to-float v3, v6

    .line 301
    iget v6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v3, v6

    move/from16 v7, p7

    int-to-float v6, v7

    .line 302
    iget v7, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x43b40000    # 360.0f

    mul-float/2addr v1, v7

    sub-float/2addr v1, v3

    sub-float/2addr v1, v6

    mul-float/2addr v2, v7

    add-float/2addr v2, v3

    cmpg-float v3, v1, v8

    if-gtz v3, :cond_4

    goto/16 :goto_5

    .line 311
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v3, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-boolean v6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawingDeterminateIndicator:Z

    .line 312
    invoke-virtual {v3, v6}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hasWavyEffect(Z)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    if-eqz p10, :cond_5

    cmpl-float v3, p8, v8

    if-lez v3, :cond_5

    move v3, v6

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 317
    :goto_1
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v6, p5

    .line 318
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    iget v6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 324
    iget v6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    mul-float/2addr v6, v9

    mul-float v10, v5, v9

    cmpg-float v11, v1, v10

    const/high16 v12, 0x42b40000    # 90.0f

    if-gez v11, :cond_9

    div-float/2addr v1, v10

    mul-float/2addr v5, v1

    add-float/2addr v2, v5

    .line 329
    new-instance v5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-direct {v5, p0}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;-><init>(Lcom/google/android/material/progressindicator/DrawingDelegate;)V

    if-nez v3, :cond_6

    add-float/2addr v2, v12

    .line 331
    invoke-virtual {v5, v2}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->rotate(F)V

    .line 332
    iget v2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    neg-float v2, v2

    invoke-virtual {v5, v2}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->moveAcross(F)V

    goto :goto_2

    :cond_6
    div-float/2addr v2, v7

    .line 334
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->activePathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v9

    .line 335
    iget v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedAmplitude:F

    mul-float v3, v3, p8

    .line 336
    iget v7, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    iget v8, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedRadius:F

    cmpl-float v8, v7, v8

    if-nez v8, :cond_7

    iget v8, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedAmplitude:F

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_8

    .line 337
    :cond_7
    iput v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedAmplitude:F

    .line 338
    iput v7, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedRadius:F

    .line 339
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->invalidateCachedPaths()V

    .line 341
    :cond_8
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->activePathMeasure:Landroid/graphics/PathMeasure;

    iget-object v7, v5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    iget-object v8, v5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-virtual {v3, v2, v7, v8}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 343
    :goto_2
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 344
    iget v2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move-object/from16 p5, p2

    move/from16 p9, v1

    move/from16 p8, v2

    move-object/from16 p6, v5

    move/from16 p7, v6

    invoke-direct/range {p3 .. p9}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFF)V

    return-void

    :cond_9
    move v9, v6

    .line 347
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 348
    iget-object v6, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v6, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-virtual {v6}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->useStrokeCap()Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_3

    :cond_a
    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_3
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    add-float/2addr v2, v5

    sub-float/2addr v1, v10

    .line 352
    iget-object v5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-virtual {v5}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->reset()V

    .line 353
    iget-object v5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-virtual {v5}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->reset()V

    if-nez v3, :cond_b

    .line 355
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    add-float v5, v2, v12

    invoke-virtual {v3, v5}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->rotate(F)V

    .line 356
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget v5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    neg-float v5, v5

    invoke-virtual {v3, v5}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->moveAcross(F)V

    .line 357
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    add-float v5, v2, v1

    add-float/2addr v5, v12

    invoke-virtual {v3, v5}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->rotate(F)V

    .line 358
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget v5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    neg-float v5, v5

    invoke-virtual {v3, v5}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->moveAcross(F)V

    .line 359
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->arcBounds:Landroid/graphics/RectF;

    iget v5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    neg-float v6, v5

    neg-float v7, v5

    invoke-virtual {v3, v6, v7, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 360
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->arcBounds:Landroid/graphics/RectF;

    const/4 v5, 0x0

    move-object/from16 p3, p1

    move-object/from16 p8, p2

    move/from16 p6, v1

    move/from16 p5, v2

    move-object/from16 p4, v3

    move/from16 p7, v5

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4

    .line 362
    :cond_b
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->activePathMeasure:Landroid/graphics/PathMeasure;

    move v4, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedActivePath:Landroid/graphics/Path;

    move v5, v1

    move-object v1, v3

    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->endPoints:Landroid/util/Pair;

    div-float/2addr v4, v7

    div-float/2addr v5, v7

    move-object v0, p0

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->calculateDisplayedPath(Landroid/graphics/PathMeasure;Landroid/graphics/Path;Landroid/util/Pair;FFFF)V

    .line 370
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedActivePath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 374
    :goto_4
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->useStrokeCap()Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_c

    .line 375
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 376
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget v3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move-object/from16 p5, p2

    move-object/from16 p6, v1

    move/from16 p8, v3

    move/from16 p7, v9

    invoke-direct/range {p3 .. p8}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FF)V

    .line 377
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget v2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    move-object/from16 p6, v1

    move/from16 p8, v2

    invoke-direct/range {p3 .. p8}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FF)V

    :cond_c
    :goto_5
    return-void
.end method

.method private drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FF)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">.PathPoint;FF)V"
        }
    .end annotation

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 401
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFF)V

    return-void
.end method

.method private drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFF)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">.PathPoint;FFF)V"
        }
    .end annotation

    .line 411
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    invoke-static {p5, v0}, Ljava/lang/Math;->min(FF)F

    move-result p5

    .line 412
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    mul-float/2addr v0, p5

    iget v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p4, v1

    .line 413
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 414
    new-instance v3, Landroid/graphics/RectF;

    neg-float p4, p4

    div-float/2addr p4, v1

    neg-float v4, p5

    div-float/2addr v4, v1

    div-float/2addr p5, v1

    invoke-direct {v3, p4, v4, v2, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 416
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 417
    iget-object p4, p3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    const/4 p5, 0x0

    aget p4, p4, p5

    iget-object p5, p3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    const/4 v1, 0x1

    aget p5, p5, v1

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 418
    iget-object p3, p3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-virtual {p0, p3}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->vectorToCanvasRotation([F)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 419
    invoke-virtual {p1, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 420
    invoke-virtual {p1, v3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getSize()I
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method adjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
    .locals 7

    .line 108
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getPreferredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 109
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getPreferredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 112
    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v2, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v4, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v4, v4, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    mul-float v4, v2, v0

    mul-float v5, v2, v1

    .line 117
    iget v6, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr v5, p2

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, -0x3d4c0000    # -90.0f

    .line 121
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 124
    iget-object p2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p2, p2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    .line 125
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 126
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne p2, v1, :cond_0

    const p2, 0x3dcccccd    # 0.1f

    .line 129
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_0
    neg-float p2, v2

    .line 135
    invoke-virtual {p1, p2, p2, v2, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 139
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    .line 140
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    const/4 p2, 0x2

    div-int/2addr p1, p2

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 141
    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->getTrackCornerRadiusInPx()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    .line 142
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->waveAmplitude:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedAmplitude:F

    .line 145
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v3

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    if-nez p4, :cond_1

    if-eqz p5, :cond_7

    :cond_1
    sub-float p1, v0, p3

    .line 149
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    div-float/2addr p1, v3

    if-eqz p4, :cond_2

    .line 150
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->showAnimationBehavior:I

    if-eq v1, p2, :cond_3

    :cond_2
    const/4 v1, 0x1

    if-eqz p5, :cond_4

    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v2, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hideAnimationBehavior:I

    if-ne v2, v1, :cond_4

    .line 154
    :cond_3
    iget p2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    .line 155
    iget-object p4, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p4, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p4, p4, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->showAnimationBehavior:I

    if-eq p4, v1, :cond_6

    :cond_5
    if-eqz p5, :cond_7

    iget-object p4, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p4, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p4, p4, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hideAnimationBehavior:I

    if-ne p4, p2, :cond_7

    .line 159
    :cond_6
    iget p2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    :cond_7
    :goto_0
    if-eqz p5, :cond_8

    .line 163
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hideAnimationBehavior:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    .line 164
    iput p3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->totalTrackLengthFraction:F

    return-void

    .line 166
    :cond_8
    iput v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->totalTrackLengthFraction:F

    return-void
.end method

.method drawStopIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 0

    return-void
.end method

.method fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;I)V
    .locals 13

    move-object/from16 v0, p3

    .line 176
    iget v1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    move/from16 v2, p4

    invoke-static {v1, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v7

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 178
    iget v1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->rotationDegree:F

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 179
    iget-boolean v1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->isDeterminate:Z

    iput-boolean v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawingDeterminateIndicator:Z

    .line 180
    iget v5, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    iget v6, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    iget v8, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->gapSize:I

    iget v9, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->gapSize:I

    iget v10, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->amplitudeFraction:F

    iget v11, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->phaseFraction:F

    const/4 v12, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v12}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
    .locals 11

    .line 203
    invoke-static/range {p5 .. p6}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v5

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawingDeterminateIndicator:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move/from16 v7, p7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p7

    .line 205
    invoke-direct/range {v0 .. v10}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    return-void
.end method

.method getPreferredHeight()I
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    move-result v0

    return v0
.end method

.method getPreferredWidth()I
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    move-result v0

    return v0
.end method

.method invalidateCachedPaths()V
    .locals 18

    move-object/from16 v0, p0

    .line 426
    iget-object v1, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 432
    iget-object v1, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 434
    iget-object v4, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f0d6289

    const v7, 0x3f0d6289

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 436
    iget-object v11, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x0

    const v12, -0x40f29d77

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, -0x40800000    # -1.0f

    const v15, 0x3f0d6289

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 443
    iget-object v3, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const v5, -0x40f29d77

    const v6, -0x40f29d77

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 450
    iget-object v10, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const v11, 0x3f0d6289

    const/high16 v12, -0x40800000    # -1.0f

    const v14, -0x40f29d77

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    :cond_0
    iget-object v2, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 455
    iget-object v2, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->transform:Landroid/graphics/Matrix;

    iget v3, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 456
    iget-object v2, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 457
    iget-object v2, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-boolean v3, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->drawingDeterminateIndicator:Z

    invoke-virtual {v2, v3}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hasWavyEffect(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    iget-object v2, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->activePathMeasure:Landroid/graphics/PathMeasure;

    iget-object v3, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 459
    iget-object v2, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->activePathMeasure:Landroid/graphics/PathMeasure;

    iget-object v3, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    iget v4, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedAmplitude:F

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->createWavyPath(Landroid/graphics/PathMeasure;Landroid/graphics/Path;F)V

    .line 461
    :cond_1
    iget-object v2, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->activePathMeasure:Landroid/graphics/PathMeasure;

    iget-object v3, v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    return-void
.end method
