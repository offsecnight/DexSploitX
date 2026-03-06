.class final Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;
.super Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
.source "CircularIndeterminateRetreatAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPLETE_END_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTANT_ROTATION_DEGREES:I = 0x438

.field private static final DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final DELAY_GROW_ACTIVE_IN_MS:I = 0x0

.field private static final DELAY_SHRINK_ACTIVE_IN_MS:I = 0xbb8

.field private static final DELAY_SPINS_IN_MS:[I

.field private static final DURATION_GROW_ACTIVE_IN_MS:I = 0xbb8

.field private static final DURATION_SHRINK_ACTIVE_IN_MS:I = 0xbb8

.field private static final DURATION_SPIN_IN_MS:I = 0x1f4

.field private static final DURATION_TO_COMPLETE_END_IN_MS:I = 0x1f4

.field private static final DURATION_TO_FADE_IN_MS:I = 0x64

.field private static final END_FRACTION_RANGE:[F

.field private static final SPIN_ROTATION_DEGREES:I = 0x5a

.field private static final START_FRACTION:F = 0.0f

.field private static final TOTAL_DURATION_IN_MS:I = 0x1770


# instance fields
.field private animationFraction:F

.field private animator:Landroid/animation/ObjectAnimator;

.field animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private final baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

.field private completeEndAnimator:Landroid/animation/ObjectAnimator;

.field private completeEndFraction:F

.field private indicatorColorIndexOffset:I

.field private final standardInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const/16 v0, 0xbb8

    const/16 v1, 0x1194

    const/4 v2, 0x0

    const/16 v3, 0x5dc

    .line 50
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->DELAY_SPINS_IN_MS:[I

    const/4 v0, 0x2

    .line 64
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->END_FRACTION_RANGE:[F

    .line 270
    new-instance v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$3;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->ANIMATION_FRACTION:Landroid/util/Property;

    .line 285
    new-instance v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "completeEndFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->COMPLETE_END_FRACTION:Landroid/util/Property;

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f5eb852    # 0.87f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;-><init>(I)V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->indicatorColorIndexOffset:I

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 83
    iput-object p2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 85
    sget p2, Lcom/google/android/material/R$attr;->motionEasingStandardInterpolator:I

    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 86
    invoke-static {p1, p2, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->standardInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->indicatorColorIndexOffset:I

    return p0
.end method

.method static synthetic access$002(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->indicatorColorIndexOffset:I

    return p1
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 41
    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->DELAY_SPINS_IN_MS:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;)F
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->getAnimationFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;)F
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->getCompleteEndFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;F)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->setCompleteEndFraction(F)V

    return-void
.end method

.method private getAnimationFraction()F
    .locals 1

    .line 246
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animationFraction:F

    return v0
.end method

.method private getCompleteEndFraction()F
    .locals 1

    .line 260
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->completeEndFraction:F

    return v0
.end method

.method private maybeInitializeAnimators()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->ANIMATION_FRACTION:Landroid/util/Property;

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    .line 104
    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indeterminateAnimatorDurationScale:F

    const v3, 0x45bb8000    # 6000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 108
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$1;-><init>(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 121
    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->COMPLETE_END_FRACTION:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    .line 122
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indeterminateAnimatorDurationScale:F

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$2;-><init>(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private maybeUpdateSegmentColors(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 218
    :goto_0
    sget-object v2, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->DELAY_SPINS_IN_MS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 219
    aget v2, v2, v1

    const/16 v3, 0x64

    .line 220
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->getFractionInRange(III)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    .line 222
    iget p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->indicatorColorIndexOffset:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length p1, p1

    rem-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    .line 224
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v3, v3

    rem-int/2addr p1, v3

    .line 225
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v1, v3, v1

    .line 226
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget p1, v3, p1

    .line 227
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->standardInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    .line 228
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->activeIndicators:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 229
    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v2, v1, p1}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setCompleteEndFraction(F)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->completeEndFraction:F

    return-void
.end method

.method private updateAnimatorsDuration()V
    .locals 3

    .line 139
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->maybeInitializeAnimators()V

    .line 140
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indeterminateAnimatorDurationScale:F

    const v2, 0x45bb8000    # 6000.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 142
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indeterminateAnimatorDurationScale:F

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private updateSegmentPositions(I)V
    .locals 11

    .line 187
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->activeIndicators:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    const/high16 v2, 0x44870000    # 1080.0f

    .line 189
    iget v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animationFraction:F

    mul-float/2addr v3, v2

    .line 192
    sget-object v2, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->DELAY_SPINS_IN_MS:[I

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v1

    move v7, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget v8, v2, v6

    .line 193
    iget-object v9, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->standardInterpolator:Landroid/animation/TimeInterpolator;

    const/16 v10, 0x1f4

    .line 195
    invoke-virtual {p0, p1, v8, v10}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->getFractionInRange(III)F

    move-result v8

    .line 194
    invoke-interface {v9, v8}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v8

    const/high16 v9, 0x42b40000    # 90.0f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-float/2addr v3, v7

    .line 198
    iput v3, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->rotationDegree:F

    .line 200
    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->standardInterpolator:Landroid/animation/TimeInterpolator;

    const/16 v3, 0xbb8

    .line 202
    invoke-virtual {p0, p1, v1, v3}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->getFractionInRange(III)F

    move-result v4

    .line 201
    invoke-interface {v2, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    .line 203
    iget-object v4, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->standardInterpolator:Landroid/animation/TimeInterpolator;

    .line 205
    invoke-virtual {p0, p1, v3, v3}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->getFractionInRange(III)F

    move-result p1

    .line 204
    invoke-interface {v4, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v2, p1

    .line 207
    iput v5, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    .line 208
    sget-object p1, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->END_FRACTION_RANGE:[F

    aget v1, p1, v1

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-static {v1, p1, v2}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result p1

    iput p1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    .line 211
    iget p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->completeEndFraction:F

    cmpl-float p1, p1, v5

    if-lez p1, :cond_1

    .line 212
    iget p1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->completeEndFraction:F

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    iput p1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    :cond_1
    return-void
.end method


# virtual methods
.method cancelAnimatorImmediately()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public invalidateSpecValues()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->updateAnimatorsDuration()V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->resetPropertiesForNewStart()V

    return-void
.end method

.method public registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method requestCancelAnimatorAfterCurrentCycle()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->cancelAnimatorImmediately()V

    :cond_2
    :goto_0
    return-void
.end method

.method resetPropertiesForNewStart()V
    .locals 3

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->indicatorColorIndexOffset:I

    .line 239
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->activeIndicators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v0, v2, v0

    iput v0, v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->completeEndFraction:F

    return-void
.end method

.method setAnimationFraction(F)V
    .locals 1

    .line 252
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animationFraction:F

    const v0, 0x45bb8000    # 6000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 254
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->updateSegmentPositions(I)V

    .line 255
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->maybeUpdateSegmentColors(I)V

    .line 256
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->invalidateSelf()V

    return-void
.end method

.method startAnimator()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->maybeInitializeAnimators()V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->resetPropertiesForNewStart()V

    .line 97
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public unregisterAnimatorsCompleteCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method
