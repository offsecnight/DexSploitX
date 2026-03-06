.class final Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;
.super Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
.source "CircularIndeterminateAdvanceAnimatorDelegate.java"


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
            "Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPLETE_END_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTANT_ROTATION_DEGREES:I = 0x5f0

.field private static final DELAY_TO_COLLAPSE_IN_MS:[I

.field private static final DELAY_TO_EXPAND_IN_MS:[I

.field private static final DELAY_TO_FADE_IN_MS:[I

.field private static final DURATION_TO_COLLAPSE_IN_MS:I = 0x29b

.field private static final DURATION_TO_COMPLETE_END_IN_MS:I = 0x14d

.field private static final DURATION_TO_EXPAND_IN_MS:I = 0x29b

.field private static final DURATION_TO_FADE_IN_MS:I = 0x14d

.field private static final EXTRA_DEGREES_PER_CYCLE:I = 0xfa

.field private static final TAIL_DEGREES_OFFSET:I = -0x14

.field private static final TOTAL_CYCLES:I = 0x4

.field private static final TOTAL_DURATION_IN_MS:I = 0x1518


# instance fields
.field private animationFraction:F

.field private animator:Landroid/animation/ObjectAnimator;

.field animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private final baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

.field private completeEndAnimator:Landroid/animation/ObjectAnimator;

.field private completeEndFraction:F

.field private indicatorColorIndexOffset:I

.field private final interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa8c

    const/16 v1, 0xfd2

    const/4 v2, 0x0

    const/16 v3, 0x546

    .line 45
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->DELAY_TO_EXPAND_IN_MS:[I

    const/16 v0, 0xd27

    const/16 v1, 0x126d

    const/16 v2, 0x29b

    const/16 v3, 0x7e1

    .line 46
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->DELAY_TO_COLLAPSE_IN_MS:[I

    const/16 v0, 0xe74

    const/16 v1, 0x13ba

    const/16 v2, 0x3e8

    const/16 v3, 0x92e

    .line 47
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->DELAY_TO_FADE_IN_MS:[I

    .line 253
    new-instance v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$3;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->ANIMATION_FRACTION:Landroid/util/Property;

    .line 268
    new-instance v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "completeEndFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->COMPLETE_END_FRACTION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;-><init>(I)V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->indicatorColorIndexOffset:I

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 70
    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 72
    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->indicatorColorIndexOffset:I

    return p0
.end method

.method static synthetic access$002(Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->indicatorColorIndexOffset:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;)F
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->getAnimationFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;)F
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->getCompleteEndFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;F)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->setCompleteEndFraction(F)V

    return-void
.end method

.method private getAnimationFraction()F
    .locals 1

    .line 229
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animationFraction:F

    return v0
.end method

.method private getCompleteEndFraction()F
    .locals 1

    .line 243
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->completeEndFraction:F

    return v0
.end method

.method private maybeInitializeAnimators()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->ANIMATION_FRACTION:Landroid/util/Property;

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    .line 89
    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indeterminateAnimatorDurationScale:F

    const v3, 0x45a8c000    # 5400.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 93
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$1;-><init>(Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 105
    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->COMPLETE_END_FRACTION:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    .line 106
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indeterminateAnimatorDurationScale:F

    const v2, 0x43a68000    # 333.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 108
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$2;-><init>(Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;)V

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

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 202
    sget-object v2, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->DELAY_TO_FADE_IN_MS:[I

    aget v2, v2, v1

    const/16 v3, 0x14d

    .line 203
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->getFractionInRange(III)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 205
    iget p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->indicatorColorIndexOffset:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length p1, p1

    rem-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    .line 207
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v3, v3

    rem-int/2addr p1, v3

    .line 208
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v1, v3, v1

    .line 209
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget p1, v3, p1

    .line 210
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v3, v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v2

    .line 211
    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->activeIndicators:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 212
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

    .line 247
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->completeEndFraction:F

    return-void
.end method

.method private updateAnimatorsDuration()V
    .locals 3

    .line 124
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->maybeInitializeAnimators()V

    .line 125
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indeterminateAnimatorDurationScale:F

    const v2, 0x45a8c000    # 5400.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 127
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indeterminateAnimatorDurationScale:F

    const v2, 0x43a68000    # 333.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private updateSegmentPositions(I)V
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->activeIndicators:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 174
    iget v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animationFraction:F

    const/high16 v3, 0x44be0000    # 1520.0f

    mul-float/2addr v2, v3

    const/high16 v4, -0x3e600000    # -20.0f

    add-float/2addr v2, v4

    iput v2, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    .line 176
    iget v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animationFraction:F

    mul-float/2addr v2, v3

    iput v2, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 180
    sget-object v2, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->DELAY_TO_EXPAND_IN_MS:[I

    aget v2, v2, v1

    const/16 v3, 0x29b

    .line 181
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->getFractionInRange(III)F

    move-result v2

    .line 182
    iget v4, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    iget-object v5, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 183
    invoke-virtual {v5, v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v5, 0x437a0000    # 250.0f

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    iput v4, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    .line 185
    sget-object v2, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->DELAY_TO_COLLAPSE_IN_MS:[I

    aget v2, v2, v1

    .line 186
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->getFractionInRange(III)F

    move-result v2

    .line 188
    iget v3, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    iget-object v4, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 189
    invoke-virtual {v4, v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v3, v2

    iput v3, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    iget p1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    iget v1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    iget v2, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->completeEndFraction:F

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    iput p1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    .line 195
    iget p1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr p1, v1

    iput p1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    .line 196
    iget p1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    div-float/2addr p1, v1

    iput p1, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    return-void
.end method


# virtual methods
.method cancelAnimatorImmediately()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public invalidateSpecValues()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->updateAnimatorsDuration()V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->resetPropertiesForNewStart()V

    return-void
.end method

.method public registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method requestCancelAnimatorAfterCurrentCycle()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->cancelAnimatorImmediately()V

    :cond_2
    :goto_0
    return-void
.end method

.method resetPropertiesForNewStart()V
    .locals 3

    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->indicatorColorIndexOffset:I

    .line 222
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->activeIndicators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v0, v2, v0

    iput v0, v1, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    const/4 v0, 0x0

    .line 223
    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->completeEndFraction:F

    return-void
.end method

.method setAnimationFraction(F)V
    .locals 1

    .line 235
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animationFraction:F

    const v0, 0x45a8c000    # 5400.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 237
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->updateSegmentPositions(I)V

    .line 238
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->maybeUpdateSegmentColors(I)V

    .line 239
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->invalidateSelf()V

    return-void
.end method

.method startAnimator()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->maybeInitializeAnimators()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->resetPropertiesForNewStart()V

    .line 82
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public unregisterAnimatorsCompleteCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method
