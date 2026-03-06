.class public Lcom/google/android/material/motion/MaterialMainContainerBackHelper;
.super Lcom/google/android/material/motion/MaterialBackAnimationHelper;
.source "MaterialMainContainerBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/motion/MaterialBackAnimationHelper<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_SCALE:F = 0.9f


# instance fields
.field private expandedCornerRadii:[F

.field private initialHideFromClipBounds:Landroid/graphics/Rect;

.field private initialHideToClipBounds:Landroid/graphics/Rect;

.field private initialTouchY:F

.field private final maxTranslationY:F

.field private final minEdgeGap:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;-><init>(Landroid/view/View;)V

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 71
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_main_container_min_edge_gap:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->minEdgeGap:F

    .line 72
    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_main_container_max_translation_y:I

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->maxTranslationY:F

    return-void
.end method

.method private calculateExpandedCornerRadii()[F
    .locals 13

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/16 v2, 0x8

    if-lt v0, v1, :cond_4

    .line 258
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 260
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 261
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 262
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x2

    .line 264
    new-array v5, v4, [I

    .line 265
    iget-object v6, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    .line 266
    aget v7, v5, v6

    const/4 v8, 0x1

    .line 267
    aget v5, v5, v8

    .line 269
    iget-object v9, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 270
    iget-object v10, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    if-nez v7, :cond_0

    if-nez v5, :cond_0

    .line 273
    invoke-direct {p0, v0, v6}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    move-result v11

    goto :goto_0

    :cond_0
    move v11, v6

    :goto_0
    add-int/2addr v9, v7

    if-lt v9, v3, :cond_1

    if-nez v5, :cond_1

    .line 276
    invoke-direct {p0, v0, v8}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    move-result v12

    goto :goto_1

    :cond_1
    move v12, v6

    :goto_1
    if-lt v9, v3, :cond_2

    add-int v3, v5, v10

    if-lt v3, v1, :cond_2

    .line 280
    invoke-direct {p0, v0, v4}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    const/4 v9, 0x3

    if-nez v7, :cond_3

    add-int/2addr v5, v10

    if-lt v5, v1, :cond_3

    .line 284
    invoke-direct {p0, v0, v9}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v6

    :goto_3
    int-to-float v1, v11

    int-to-float v5, v12

    int-to-float v3, v3

    int-to-float v0, v0

    .line 287
    new-array v2, v2, [F

    aput v1, v2, v6

    aput v1, v2, v8

    aput v5, v2, v4

    aput v5, v2, v9

    const/4 v1, 0x4

    aput v3, v2, v1

    const/4 v1, 0x5

    aput v3, v2, v1

    const/4 v1, 0x6

    aput v0, v2, v1

    const/4 v1, 0x7

    aput v0, v2, v1

    return-object v2

    .line 292
    :cond_4
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private createCornerAnimator(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 206
    new-instance v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 210
    invoke-virtual {p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getCornerRadii()[F

    move-result-object v1

    .line 211
    invoke-virtual {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getExpandedCornerRadii()[F

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 8

    .line 185
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x4

    .line 186
    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    .line 187
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v7, v5, v6

    .line 188
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v4, [F

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 189
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v7, v4, v6

    .line 190
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 186
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 191
    new-instance v1, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;-><init>(Lcom/google/android/material/motion/MaterialMainContainerBackHelper;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getRoundedCornerRadius(Landroid/view/WindowInsets;I)I
    .locals 0

    .line 297
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$createCornerAnimator$0(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 209
    check-cast p1, [F

    check-cast p2, [F

    invoke-static {p1, p2, p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->lerpCornerRadii([F[FF)[F

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createCornerAnimator$1(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 214
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateCornerRadii([F)V

    return-void
.end method

.method private static lerpCornerRadii([FFF)[F
    .locals 18

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 232
    aget v3, p0, v2

    .line 233
    invoke-static {v3, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v3

    const/4 v4, 0x1

    aget v5, p0, v4

    .line 234
    invoke-static {v5, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v5

    const/4 v6, 0x2

    aget v7, p0, v6

    .line 235
    invoke-static {v7, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v7

    const/4 v8, 0x3

    aget v9, p0, v8

    .line 236
    invoke-static {v9, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v9

    const/4 v10, 0x4

    aget v11, p0, v10

    .line 237
    invoke-static {v11, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v11

    const/4 v12, 0x5

    aget v13, p0, v12

    .line 238
    invoke-static {v13, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v13

    const/4 v14, 0x6

    aget v15, p0, v14

    .line 239
    invoke-static {v15, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v15

    const/16 v16, 0x7

    move/from16 v17, v2

    aget v2, p0, v16

    .line 240
    invoke-static {v2, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [F

    aput v3, v1, v17

    aput v5, v1, v4

    aput v7, v1, v6

    aput v9, v1, v8

    aput v11, v1, v10

    aput v13, v1, v12

    aput v15, v1, v14

    aput v0, v1, v16

    return-object v1
.end method

.method private static lerpCornerRadii([F[FF)[F
    .locals 18

    move/from16 v0, p2

    const/4 v1, 0x0

    .line 219
    aget v2, p0, v1

    aget v3, p1, v1

    .line 220
    invoke-static {v2, v3, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    const/4 v3, 0x1

    aget v4, p0, v3

    aget v5, p1, v3

    .line 221
    invoke-static {v4, v5, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v4

    const/4 v5, 0x2

    aget v6, p0, v5

    aget v7, p1, v5

    .line 222
    invoke-static {v6, v7, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v6

    const/4 v7, 0x3

    aget v8, p0, v7

    aget v9, p1, v7

    .line 223
    invoke-static {v8, v9, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v8

    const/4 v9, 0x4

    aget v10, p0, v9

    aget v11, p1, v9

    .line 224
    invoke-static {v10, v11, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v10

    const/4 v11, 0x5

    aget v12, p0, v11

    aget v13, p1, v11

    .line 225
    invoke-static {v12, v13, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v12

    const/4 v13, 0x6

    aget v14, p0, v13

    aget v15, p1, v13

    .line 226
    invoke-static {v14, v15, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v14

    const/4 v15, 0x7

    move/from16 v16, v1

    aget v1, p0, v15

    move/from16 v17, v3

    aget v3, p1, v15

    .line 227
    invoke-static {v1, v3, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [F

    aput v2, v1, v16

    aput v4, v1, v17

    aput v6, v1, v5

    aput v8, v1, v7

    aput v10, v1, v9

    aput v12, v1, v11

    aput v14, v1, v13

    aput v0, v1, v15

    return-object v1
.end method

.method private resetInitialValues()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialTouchY:F

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    .line 180
    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public cancelBackProgress(Landroid/view/View;)V
    .locals 3

    .line 163
    invoke-super {p0}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onCancelBackProgress()Landroidx/activity/BackEventCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 169
    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    check-cast v1, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-direct {p0, v1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createCornerAnimator(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 171
    :cond_1
    iget v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->cancelDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 172
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 174
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->resetInitialValues()V

    return-void
.end method

.method public clearExpandedCornerRadii()V
    .locals 1

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerRadii:[F

    return-void
.end method

.method public finishBackProgress(JLandroid/view/View;)V
    .locals 0

    .line 155
    invoke-direct {p0, p3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p3

    .line 156
    invoke-virtual {p3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 157
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 159
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->resetInitialValues()V

    return-void
.end method

.method public getExpandedCornerRadii()[F
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerRadii:[F

    if-nez v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->calculateExpandedCornerRadii()[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerRadii:[F

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerRadii:[F

    return-object v0
.end method

.method public getInitialHideFromClipBounds()Landroid/graphics/Rect;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInitialHideToClipBounds()Landroid/graphics/Rect;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public startBackProgress(FLandroid/view/View;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/google/android/material/internal/ViewUtils;->calculateOffsetRectFromBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    .line 98
    :cond_0
    iput p1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialTouchY:F

    return-void
.end method

.method public startBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onStartBackProgress(Landroidx/activity/BackEventCompat;)V

    .line 89
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getTouchY()F

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->startBackProgress(FLandroid/view/View;)V

    return-void
.end method

.method public updateBackProgress(FZFF)V
    .locals 6

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->interpolateProgress(F)F

    move-result p1

    .line 121
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 122
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_3

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    .line 127
    invoke-static {v3, v4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v3

    mul-float/2addr v4, v0

    sub-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    .line 129
    iget v5, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->minEdgeGap:F

    sub-float/2addr v0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 130
    invoke-static {v2, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    int-to-float p2, p2

    mul-float/2addr v0, p2

    mul-float p2, v3, v1

    sub-float p2, v1, p2

    div-float/2addr p2, v4

    .line 132
    iget v4, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->minEdgeGap:F

    sub-float/2addr p2, v4

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 133
    iget v4, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->maxTranslationY:F

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 134
    iget v4, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialTouchY:F

    sub-float/2addr p3, v4

    .line 135
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v1

    .line 136
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    .line 137
    invoke-static {v2, p2, v4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p2

    mul-float/2addr p2, p3

    .line 139
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 143
    :cond_2
    iget-object p3, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setScaleX(F)V

    .line 144
    iget-object p3, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setScaleY(F)V

    .line 145
    iget-object p3, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 146
    iget-object p3, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 147
    iget-object p2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    instance-of p2, p2, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    if-eqz p2, :cond_3

    .line 148
    iget-object p2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    check-cast p2, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 150
    invoke-virtual {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getExpandedCornerRadii()[F

    move-result-object p3

    invoke-static {p3, p4, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->lerpCornerRadii([FFF)[F

    move-result-object p1

    .line 149
    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateCornerRadii([F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;F)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onUpdateBackProgress(Landroidx/activity/BackEventCompat;)Landroidx/activity/BackEventCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 108
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getSwipeEdge()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 113
    :goto_0
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v0

    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getTouchY()F

    move-result p1

    .line 112
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->updateBackProgress(FZFF)V

    return-void
.end method
