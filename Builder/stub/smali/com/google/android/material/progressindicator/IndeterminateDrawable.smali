.class public final Lcom/google/android/material/progressindicator/IndeterminateDrawable;
.super Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.source "IndeterminateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
        ">",
        "Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;"
    }
.end annotation


# instance fields
.field private animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;"
        }
    .end annotation
.end field

.field private staticDummyDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/DrawingDelegate;Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;",
            "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    .line 55
    invoke-virtual {p0, p3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setDrawingDelegate(Lcom/google/android/material/progressindicator/DrawingDelegate;)V

    .line 56
    invoke-virtual {p0, p4}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setAnimatorDelegate(Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    return-void
.end method

.method public static createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-direct {v0, p1}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    invoke-static {p0, p1, v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;Lcom/google/android/material/progressindicator/CircularDrawingDelegate;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object p0

    return-object p0
.end method

.method static createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;Lcom/google/android/material/progressindicator/CircularDrawingDelegate;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            "Lcom/google/android/material/progressindicator/CircularDrawingDelegate;",
            ")",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 125
    iget v1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indeterminateAnimationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 126
    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    :goto_0
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/DrawingDelegate;Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/google/android/material/R$drawable;->ic_mtrl_arrow_circle:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object p0

    .line 128
    invoke-virtual {v0, p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setStaticDummyDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static createLinearDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    invoke-direct {v0, p1}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    invoke-static {p0, p1, v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->createLinearDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;Lcom/google/android/material/progressindicator/LinearDrawingDelegate;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object p0

    return-object p0
.end method

.method static createLinearDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;Lcom/google/android/material/progressindicator/LinearDrawingDelegate;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            "Lcom/google/android/material/progressindicator/LinearDrawingDelegate;",
            ")",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 89
    iget v1, p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    goto :goto_0

    .line 91
    :cond_0
    new-instance v1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    :goto_0
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/DrawingDelegate;Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    return-object v0
.end method

.method private isSystemAnimatorDisabled()Z
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->context:Landroid/content/Context;

    .line 287
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 286
    invoke-virtual {v0, v2}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public bridge synthetic clearAnimationCallbacks()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->clearAnimationCallbacks()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    move-object v1, p1

    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->clipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isSystemAnimatorDisabled()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v2, v2, v8

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 192
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    .line 198
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getGrowFraction()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isShowing()Z

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isHiding()Z

    move-result v5

    .line 197
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/progressindicator/DrawingDelegate;->validateSpecAndAdjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    .line 200
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v9, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorTrackGapSize:I

    .line 201
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v6

    .line 202
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    instance-of v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    instance-of v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-boolean v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indeterminateTrackVisible:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v10, v8

    goto :goto_1

    :cond_3
    :goto_0
    move v10, v1

    :goto_1
    if-eqz v10, :cond_4

    if-nez v9, :cond_4

    .line 206
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 207
    invoke-virtual {v0, v8}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hasWavyEffect(Z)Z

    move-result v0

    if-nez v0, :cond_4

    move v11, v1

    goto :goto_2

    :cond_4
    move v11, v8

    :goto_2
    if-eqz v11, :cond_5

    .line 210
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v5, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto/16 :goto_3

    :cond_5
    if-eqz v10, :cond_7

    .line 220
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->activeIndicators:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 221
    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->activeIndicators:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->activeIndicators:Ljava/util/List;

    .line 222
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 223
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    instance-of v2, v1, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    if-eqz v2, :cond_6

    .line 224
    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v5, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    const/4 v3, 0x0

    move-object v0, v1

    move v7, v9

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 232
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v5, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_4

    :cond_6
    move-object v1, p1

    move v7, v9

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 242
    iget v2, v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->rotationDegree:F

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 243
    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    move-object v3, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    iget v4, v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    iget v0, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v0, v5

    iget-object v5, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v5, v5, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    move v13, v4

    move v4, v0

    move-object v0, v3

    move v3, v13

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_7
    move-object v1, p1

    :goto_3
    move v7, v9

    .line 257
    :goto_4
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->activeIndicators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_9

    .line 259
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->activeIndicators:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 260
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getPhaseFraction()F

    move-result v2

    iput v2, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->phaseFraction:F

    .line 262
    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v4

    invoke-virtual {v2, p1, v3, v0, v4}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;I)V

    if-lez v8, :cond_8

    if-nez v11, :cond_8

    if-eqz v10, :cond_8

    .line 266
    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->activeIndicators:Ljava/util/List;

    add-int/lit8 v3, v8, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 267
    iget-object v3, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    iget v2, v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    iget v0, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    iget-object v5, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v5, v5, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    move-object v13, v4

    move v4, v0

    move-object v0, v3

    move v3, v2

    move-object v2, v13

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :cond_8
    add-int/lit8 v8, v8, 0x1

    move-object v1, p1

    goto :goto_4

    .line 278
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    :goto_5
    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getAlpha()I

    move-result v0

    return v0
.end method

.method getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    return-object v0
.end method

.method getDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getStaticDummyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public bridge synthetic hideNow()Z
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isHiding()Z
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isRunning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShowing()Z
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setAlpha(I)V

    return-void
.end method

.method setAnimatorDelegate(Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    .line 317
    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->registerDrawable(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method setDrawingDelegate(Lcom/google/android/material/progressindicator/DrawingDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;)V"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    return-void
.end method

.method public setStaticDummyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 38
    invoke-super {p0, p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setVisible(ZZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    move-result p1

    return p1
.end method

.method setVisibleInternal(ZZZ)Z
    .locals 2

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    move-result v0

    .line 151
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isSystemAnimatorDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_1

    .line 157
    iget-object p2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->cancelAnimatorImmediately()V

    :cond_1
    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    return v0

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->startAnimator()V

    :cond_3
    return v0
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->stop()V

    return-void
.end method

.method public bridge synthetic unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result p1

    return p1
.end method
