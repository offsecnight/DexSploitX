.class final Lcom/google/android/material/progressindicator/LinearDrawingDelegate;
.super Lcom/google/android/material/progressindicator/DrawingDelegate;
.source "LinearDrawingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/DrawingDelegate<",
        "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# instance fields
.field private adjustedWavelength:F

.field private cachedWavelength:I

.field private displayedAmplitude:F

.field private displayedCornerRadius:F

.field private displayedInnerCornerRadius:F

.field private displayedTrackThickness:F

.field private drawingDeterminateIndicator:Z

.field endPoints:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">.PathPoint;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">.PathPoint;>;"
        }
    .end annotation
.end field

.field private totalTrackLengthFraction:F

.field private trackLength:F


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/DrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    const/high16 p1, 0x43960000    # 300.0f

    .line 51
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    .line 66
    new-instance p1, Landroid/util/Pair;

    new-instance v0, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;-><init>(Lcom/google/android/material/progressindicator/DrawingDelegate;)V

    new-instance v1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;-><init>(Lcom/google/android/material/progressindicator/DrawingDelegate;)V

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    return-void
.end method

.method private calculateDisplayedPath(Landroid/graphics/PathMeasure;Landroid/graphics/Path;Landroid/util/Pair;FFFF)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PathMeasure;",
            "Landroid/graphics/Path;",
            "Landroid/util/Pair<",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">.PathPoint;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">.PathPoint;>;FFFF)V"
        }
    .end annotation

    .line 511
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawingDeterminateIndicator:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->wavelengthDeterminate:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->wavelengthIndeterminate:I

    .line 512
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->activePathMeasure:Landroid/graphics/PathMeasure;

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->cachedWavelength:I

    if-eq v0, v1, :cond_1

    .line 513
    iput v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->cachedWavelength:I

    .line 514
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->invalidateCachedPaths()V

    .line 516
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 517
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 518
    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-boolean v2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawingDeterminateIndicator:Z

    invoke-virtual {v1, v2}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hasWavyEffect(Z)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 520
    iget v3, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    iget v4, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->adjustedWavelength:F

    div-float/2addr v3, v4

    div-float v5, p7, v3

    add-float v6, v3, v2

    div-float/2addr v3, v6

    add-float/2addr p4, v5

    mul-float/2addr p4, v3

    add-float/2addr p5, v5

    mul-float/2addr p5, v3

    mul-float/2addr p7, v4

    sub-float/2addr v0, p7

    .line 527
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p7

    mul-float/2addr p4, p7

    .line 528
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p7

    mul-float/2addr p5, p7

    const/4 p7, 0x1

    .line 529
    invoke-virtual {p1, p4, p5, p2, p7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 531
    iget-object p7, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p7, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    .line 532
    invoke-virtual {p7}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->reset()V

    .line 533
    iget-object v3, p7, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    iget-object v4, p7, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-virtual {p1, p4, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 534
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    .line 535
    invoke-virtual {p3}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->reset()V

    .line 536
    iget-object p4, p3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    iget-object v3, p3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-virtual {p1, p5, p4, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 538
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 539
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->transform:Landroid/graphics/Matrix;

    const/4 p4, 0x0

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 540
    invoke-virtual {p7, v0, p4}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->translate(FF)V

    .line 541
    invoke-virtual {p3, v0, p4}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->translate(FF)V

    if-eqz v1, :cond_3

    .line 543
    iget p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedAmplitude:F

    mul-float/2addr p1, p6

    .line 544
    iget-object p4, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p4, v2, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 545
    invoke-virtual {p7, v2, p1}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->scale(FF)V

    .line 546
    invoke-virtual {p3, v2, p1}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->scale(FF)V

    .line 548
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const/4 v8, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v3, p3

    .line 222
    invoke-static {v3, v8, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    move/from16 v4, p4

    .line 223
    invoke-static {v4, v8, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    .line 225
    iget v5, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->totalTrackLengthFraction:F

    sub-float v5, v1, v5

    invoke-static {v5, v1, v3}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v3

    .line 226
    iget v5, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->totalTrackLengthFraction:F

    sub-float v5, v1, v5

    invoke-static {v5, v1, v4}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v4

    move/from16 v5, p6

    int-to-float v5, v5

    const v6, 0x3c23d70a    # 0.01f

    .line 231
    invoke-static {v3, v8, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v7

    mul-float/2addr v5, v7

    div-float/2addr v5, v6

    float-to-int v5, v5

    move/from16 v7, p7

    int-to-float v7, v7

    const v9, 0x3f7d70a4    # 0.99f

    .line 236
    invoke-static {v4, v9, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v9

    sub-float/2addr v1, v9

    mul-float/2addr v7, v1

    div-float/2addr v7, v6

    float-to-int v1, v7

    .line 240
    iget v6, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    mul-float/2addr v3, v6

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    mul-float/2addr v4, v6

    int-to-float v1, v1

    sub-float/2addr v4, v1

    float-to-int v1, v4

    .line 242
    iget v4, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 245
    iget v5, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedInnerCornerRadius:F

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_0

    .line 247
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    div-float/2addr v4, v5

    .line 248
    iget v6, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    iget v7, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedInnerCornerRadius:F

    int-to-float v9, v3

    div-float/2addr v9, v5

    .line 252
    invoke-static {v9, v8, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    div-float/2addr v5, v4

    .line 249
    invoke-static {v6, v7, v5}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v5

    .line 254
    iget v6, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    iget v7, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedInnerCornerRadius:F

    iget v9, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    int-to-float v10, v1

    sub-float v10, v9, v10

    div-float/2addr v10, v9

    .line 258
    invoke-static {v10, v8, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v9

    div-float/2addr v9, v4

    .line 255
    invoke-static {v6, v7, v9}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v4

    move v10, v4

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    move v10, v6

    .line 262
    :goto_0
    iget v4, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 264
    iget-object v7, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v7, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-boolean v9, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawingDeterminateIndicator:Z

    .line 265
    invoke-virtual {v7, v9}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hasWavyEffect(Z)Z

    move-result v7

    const/4 v9, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_1

    if-eqz p10, :cond_1

    cmpl-float v7, p8, v8

    if-lez v7, :cond_1

    move v7, v11

    goto :goto_1

    :cond_1
    move v7, v9

    :goto_1
    if-gt v3, v1, :cond_7

    int-to-float v12, v3

    add-float/2addr v12, v6

    int-to-float v1, v1

    sub-float v13, v1, v10

    move v1, v4

    mul-float v4, v6, v5

    mul-float/2addr v5, v10

    move/from16 v14, p5

    .line 278
    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 280
    iget v14, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 282
    iget-object v14, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-virtual {v14}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->reset()V

    .line 283
    iget-object v14, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    invoke-virtual {v14}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->reset()V

    .line 284
    iget-object v14, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    add-float v15, v12, v1

    invoke-virtual {v14, v15, v8}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->translate(FF)V

    .line 285
    iget-object v14, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    add-float/2addr v1, v13

    invoke-virtual {v14, v1, v8}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->translate(FF)V

    if-nez v3, :cond_2

    add-float v1, v13, v10

    add-float v3, v12, v6

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 289
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    move v8, v5

    iget v5, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget v9, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    const/4 v11, 0x1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFFLcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFFZ)V

    return-void

    :cond_2
    move v1, v10

    move v10, v5

    sub-float v2, v12, v6

    sub-float v3, v13, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 302
    iget-object v2, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget v5, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    iget-object v2, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget v9, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    const/4 v11, 0x0

    move-object/from16 v2, p2

    move v8, v4

    move v4, v10

    move v10, v6

    move v6, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFFLcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFFZ)V

    return-void

    :cond_3
    move-object/from16 v2, p2

    move/from16 v16, v1

    move v15, v6

    move v14, v10

    move v10, v4

    .line 317
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 318
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->useStrokeCap()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_2

    :cond_4
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    if-nez v7, :cond_5

    .line 324
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v1, v1, v9

    iget-object v3, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v3, v3, v11

    iget-object v4, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget-object v4, v4, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v4, v4, v9

    iget-object v5, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget-object v5, v5, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v5, v5, v11

    move-object/from16 p3, p1

    move/from16 p4, v1

    move-object/from16 p8, v2

    move/from16 p5, v3

    move/from16 p6, v4

    move/from16 p7, v5

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v9, p8

    move-object/from16 v2, p1

    goto :goto_3

    :cond_5
    move-object v9, v2

    .line 332
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->activePathMeasure:Landroid/graphics/PathMeasure;

    iget-object v2, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedActivePath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget v4, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    move v5, v4

    div-float v4, v12, v5

    div-float v5, v13, v5

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->calculateDisplayedPath(Landroid/graphics/PathMeasure;Landroid/graphics/Path;Landroid/util/Pair;FFFF)V

    .line 340
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedActivePath:Landroid/graphics/Path;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 342
    :goto_3
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->useStrokeCap()Z

    move-result v1

    if-nez v1, :cond_7

    cmpl-float v1, v12, v8

    if-lez v1, :cond_6

    cmpl-float v1, v15, v8

    if-lez v1, :cond_6

    .line 345
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget v3, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    move-object/from16 p3, v0

    move-object/from16 p6, v1

    move-object/from16 p4, v2

    move/from16 p8, v3

    move-object/from16 p5, v9

    move/from16 p7, v10

    move/from16 p9, v15

    invoke-direct/range {p3 .. p9}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFF)V

    .line 353
    :cond_6
    iget v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    cmpg-float v1, v13, v1

    if-gez v1, :cond_7

    cmpl-float v1, v16, v8

    if-lez v1, :cond_7

    .line 355
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->endPoints:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget v2, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    move-object/from16 p4, p1

    move-object/from16 p5, p2

    move-object/from16 p3, v0

    move-object/from16 p6, v1

    move/from16 p8, v2

    move/from16 p7, v14

    move/from16 p9, v16

    invoke-direct/range {p3 .. p9}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFF)V

    :cond_7
    return-void
.end method

.method private drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFF)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">.PathPoint;FFF)V"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 403
    invoke-direct/range {v0 .. v11}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFFLcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFFZ)V

    return-void
.end method

.method private drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFFLcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFFZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">.PathPoint;FFF",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">.PathPoint;FFFZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 420
    iget v7, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    move/from16 v8, p5

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 421
    new-instance v8, Landroid/graphics/RectF;

    neg-float v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    neg-float v11, v7

    div-float/2addr v11, v10

    div-float/2addr v4, v10

    div-float/2addr v7, v10

    invoke-direct {v8, v9, v11, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 422
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 423
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/4 v13, 0x0

    if-eqz v6, :cond_3

    .line 426
    iget v14, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    move/from16 v15, p9

    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    div-float v15, p8, v10

    mul-float v16, p10, v14

    move/from16 p5, v10

    .line 427
    iget v10, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    div-float v10, v16, v10

    invoke-static {v15, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 428
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    const/16 p4, 0x1

    const/4 v12, 0x0

    if-eqz p11, :cond_1

    .line 430
    iget-object v9, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v9, v9, v13

    sub-float/2addr v9, v10

    move/from16 v16, v13

    iget-object v13, v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v13, v13, v16

    sub-float/2addr v13, v5

    sub-float/2addr v9, v13

    cmpl-float v13, v9, v12

    if-lez v13, :cond_0

    neg-float v13, v9

    div-float v13, v13, p5

    .line 434
    invoke-virtual {v6, v13, v12}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->translate(FF)V

    add-float v9, p8, v9

    goto :goto_0

    :cond_0
    move/from16 v9, p8

    .line 438
    :goto_0
    invoke-virtual {v15, v12, v11, v4, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_1
    move/from16 v16, v13

    .line 440
    iget-object v4, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v4, v4, v16

    add-float/2addr v4, v10

    iget-object v13, v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v13, v13, v16

    add-float/2addr v13, v5

    sub-float/2addr v4, v13

    cmpg-float v13, v4, v12

    if-gez v13, :cond_2

    neg-float v13, v4

    div-float v13, v13, p5

    .line 444
    invoke-virtual {v6, v13, v12}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->translate(FF)V

    sub-float v4, p8, v4

    goto :goto_1

    :cond_2
    move/from16 v4, p8

    .line 448
    :goto_1
    invoke-virtual {v15, v9, v11, v12, v7}, Landroid/graphics/RectF;->set(FFFF)V

    move v9, v4

    .line 450
    :goto_2
    new-instance v4, Landroid/graphics/RectF;

    neg-float v7, v9

    div-float v7, v7, p5

    neg-float v11, v14

    div-float v11, v11, p5

    div-float v9, v9, p5

    div-float v14, v14, p5

    invoke-direct {v4, v7, v11, v9, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 452
    iget-object v7, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v7, v7, v16

    iget-object v9, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v9, v9, p4

    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 453
    iget-object v7, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-virtual {v0, v7}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->vectorToCanvasRotation([F)F

    move-result v7

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 454
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 455
    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v4, v10, v10, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 456
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 458
    iget-object v4, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-virtual {v0, v4}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->vectorToCanvasRotation([F)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 459
    iget-object v4, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v4, v4, v16

    neg-float v4, v4

    iget-object v6, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v6, v6, p4

    neg-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 461
    iget-object v4, v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v4, v4, v16

    iget-object v6, v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v6, v6, p4

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 462
    iget-object v3, v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-virtual {v0, v3}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->vectorToCanvasRotation([F)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 463
    invoke-virtual {v1, v15, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 465
    invoke-virtual {v1, v8, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    move/from16 v16, v13

    const/16 p4, 0x1

    .line 468
    iget-object v4, v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v4, v4, v16

    iget-object v6, v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->posVec:[F

    aget v6, v6, p4

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 469
    iget-object v3, v3, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;->tanVec:[F

    invoke-virtual {v0, v3}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->vectorToCanvasRotation([F)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 471
    invoke-virtual {v1, v8, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 473
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method adjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
    .locals 7

    .line 101
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    .line 103
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->invalidateCachedPaths()V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->getPreferredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 108
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 109
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 110
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v0

    div-float/2addr p2, v3

    const/4 v4, 0x0

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-float/2addr v2, p2

    .line 108
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-boolean p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 114
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 119
    :cond_1
    iget p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    div-float/2addr p2, v3

    div-float/2addr v0, v3

    neg-float v5, p2

    neg-float v6, v0

    .line 121
    invoke-virtual {p1, v5, v6, p2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 124
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    .line 125
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    const/4 v0, 0x2

    div-int/2addr p2, v0

    iget-object v5, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v5, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 126
    invoke-virtual {v5}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->getTrackCornerRadiusInPx()I

    move-result v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 127
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->waveAmplitude:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedAmplitude:F

    .line 128
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float p2, p2

    div-float/2addr p2, v3

    iget-object v5, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v5, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 129
    invoke-virtual {v5}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->getTrackInnerCornerRadiusInPx()I

    move-result v5

    int-to-float v5, v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedInnerCornerRadius:F

    const/4 p2, 0x3

    if-nez p4, :cond_2

    if-eqz p5, :cond_7

    :cond_2
    if-eqz p4, :cond_3

    .line 135
    iget-object v5, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v5, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v5, v5, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->showAnimationBehavior:I

    if-eq v5, v0, :cond_4

    :cond_3
    if-eqz p5, :cond_5

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hideAnimationBehavior:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    .line 137
    :cond_4
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_5
    if-nez p4, :cond_6

    if-eqz p5, :cond_7

    .line 140
    iget-object p4, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p4, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p4, p4, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hideAnimationBehavior:I

    if-eq p4, p2, :cond_7

    .line 141
    :cond_6
    iget-object p4, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p4, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p4, p4, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float p4, p4

    sub-float v0, v2, p3

    mul-float/2addr p4, v0

    div-float/2addr p4, v3

    invoke-virtual {p1, v4, p4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7
    if-eqz p5, :cond_8

    .line 145
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hideAnimationBehavior:I

    if-ne p1, p2, :cond_8

    .line 146
    iput p3, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->totalTrackLengthFraction:F

    return-void

    .line 148
    :cond_8
    iput v2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->totalTrackLengthFraction:F

    return-void
.end method

.method drawStopIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 8

    .line 374
    invoke-static {p3, p4}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result p3

    const/4 p4, 0x0

    .line 375
    iput-boolean p4, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawingDeterminateIndicator:Z

    .line 376
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorSize:I

    if-lez v0, :cond_1

    if-eqz p3, :cond_1

    .line 378
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    iget-object p3, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p3, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object p3, p3, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorPadding:Ljava/lang/Integer;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_0

    .line 382
    iget-object p3, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p3, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object p3, p3, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorPadding:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->floatValue()F

    move-result p3

    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorSize:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr p3, v1

    goto :goto_0

    .line 383
    :cond_0
    iget p3, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    div-float/2addr p3, v0

    .line 384
    :goto_0
    new-instance v4, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;

    iget v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    div-float/2addr v1, v0

    sub-float/2addr v1, p3

    const/4 p3, 0x2

    new-array v0, p3, [F

    aput v1, v0, p4

    const/4 p4, 0x1

    const/4 v1, 0x0

    aput v1, v0, p4

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-direct {v4, p0, v0, p3}, Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;-><init>(Lcom/google/android/material/progressindicator/DrawingDelegate;[F[F)V

    iget-object p3, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p3, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p3, p3, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorSize:I

    int-to-float v5, p3

    iget-object p3, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p3, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p3, p3, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorSize:I

    int-to-float v6, p3

    iget p3, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    iget-object p4, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p4, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p4, p4, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorSize:I

    int-to-float p4, p4

    mul-float/2addr p3, p4

    iget p4, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    div-float v7, p3, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedBlock(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$PathPoint;FFF)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;I)V
    .locals 13

    move-object/from16 v0, p3

    .line 158
    iget v1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    move/from16 v2, p4

    invoke-static {v1, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v7

    .line 159
    iget-boolean v1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->isDeterminate:Z

    iput-boolean v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawingDeterminateIndicator:Z

    .line 160
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

    invoke-direct/range {v2 .. v12}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    return-void
.end method

.method fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
    .locals 11

    .line 182
    invoke-static/range {p5 .. p6}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v5

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawingDeterminateIndicator:Z

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

    .line 184
    invoke-direct/range {v0 .. v10}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    return-void
.end method

.method getPreferredHeight()I
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->waveAmplitude:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method getPreferredWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method invalidateCachedPaths()V
    .locals 21

    move-object/from16 v0, p0

    .line 478
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 479
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-boolean v2, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawingDeterminateIndicator:Z

    invoke-virtual {v1, v2}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hasWavyEffect(Z)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 481
    iget-boolean v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawingDeterminateIndicator:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->wavelengthDeterminate:I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->wavelengthIndeterminate:I

    .line 482
    :goto_0
    iget v4, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    int-to-float v1, v1

    div-float v1, v4, v1

    float-to-int v1, v1

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 483
    iput v4, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->adjustedWavelength:F

    move v4, v2

    :goto_1
    if-gt v4, v1, :cond_1

    .line 486
    iget-object v5, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    mul-int/lit8 v12, v4, 0x2

    int-to-float v6, v12

    const v13, 0x3ef5c28f    # 0.48f

    add-float/2addr v6, v13

    add-int/lit8 v7, v12, 0x1

    int-to-float v10, v7

    sub-float v8, v10, v13

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 487
    iget-object v14, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    add-float v15, v10, v13

    add-int/lit8 v12, v12, 0x2

    int-to-float v5, v12

    sub-float v17, v5, v13

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v19, v5

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 492
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 493
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->transform:Landroid/graphics/Matrix;

    iget v4, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->adjustedWavelength:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 494
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->transform:Landroid/graphics/Matrix;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 495
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 497
    :cond_2
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    iget v4, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 499
    :goto_2
    iget-object v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->activePathMeasure:Landroid/graphics/PathMeasure;

    iget-object v3, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->cachedActivePath:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    return-void
.end method
