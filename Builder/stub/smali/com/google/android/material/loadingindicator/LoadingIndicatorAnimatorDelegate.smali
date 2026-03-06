.class Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;
.super Ljava/lang/Object;
.source "LoadingIndicatorAnimatorDelegate.java"


# static fields
.field private static final ANIMATION_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTANT_ROTATION_PER_SHAPE_DEGREES:I = 0x32

.field private static final DURATION_PER_SHAPE_IN_MS:I = 0x28a

.field private static final EXTRA_ROTATION_PER_SHAPE_DEGREES:I = 0x5a

.field private static final MORPH_FACTOR:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPRING_DAMPING_RATIO:F = 0.6f

.field private static final SPRING_STIFFNESS:F = 200.0f


# instance fields
.field private animationFraction:F

.field private animator:Landroid/animation/ObjectAnimator;

.field drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

.field indicatorState:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;

.field private morphFactor:F

.field private morphFactorTarget:I

.field specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

.field private springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 192
    new-instance v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->ANIMATION_FRACTION:Landroid/util/Property;

    .line 205
    new-instance v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$3;

    const-string v1, "morphFactor"

    invoke-direct {v0, v1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->MORPH_FACTOR:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    .line 58
    new-instance p1, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;

    invoke-direct {p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->indicatorState:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;

    return-void
.end method

.method static synthetic access$004(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)I
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactorTarget:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactorTarget:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)F
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->getAnimationFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)F
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->getMorphFactor()F

    move-result p0

    return p0
.end method

.method private getAnimationFraction()F
    .locals 1

    .line 159
    iget v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->animationFraction:F

    return v0
.end method

.method private getMorphFactor()F
    .locals 1

    .line 173
    iget v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactor:F

    return v0
.end method

.method private maybeInitializeAnimators()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->MORPH_FACTOR:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x43480000    # 200.0f

    .line 99
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    .line 100
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    const v1, 0x3c23d70a    # 0.01f

    .line 101
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 105
    sget-object v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->ANIMATION_FRACTION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x28a

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 107
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$1;-><init>(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateIndicatorRotation(I)V
    .locals 4

    .line 124
    iget v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactorTarget:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    .line 125
    iget v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactor:F

    sub-float/2addr v1, v0

    int-to-float p1, p1

    const v2, 0x44228000    # 650.0f

    div-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->indicatorState:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;

    const/high16 v3, 0x430c0000    # 140.0f

    mul-float/2addr v0, v3

    iput v0, v2, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->rotationDegree:F

    .line 136
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->indicatorState:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;

    iget v2, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->rotationDegree:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    iput v2, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->rotationDegree:F

    .line 138
    iget-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->indicatorState:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;

    iget v0, p1, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->rotationDegree:F

    const/high16 v2, 0x42b40000    # 90.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->rotationDegree:F

    .line 140
    iget-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->indicatorState:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;

    iget v0, p1, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->rotationDegree:F

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p1, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->rotationDegree:F

    return-void
.end method

.method private updateIndicatorShapeAndColor()V
    .locals 7

    .line 145
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->indicatorState:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;

    iget v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactor:F

    iput v1, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->morphFraction:F

    .line 147
    iget v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactorTarget:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    .line 148
    iget-object v2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorColors:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 149
    iget-object v2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorColors:[I

    aget v0, v2, v0

    .line 150
    iget-object v2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorColors:[I

    aget v1, v2, v1

    .line 151
    iget-object v2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->indicatorState:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;

    .line 152
    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    move-result-object v3

    iget v4, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactor:F

    iget v5, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactorTarget:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 153
    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v0, v1}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->color:I

    return-void
.end method


# virtual methods
.method cancelAnimatorImmediately()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_1
    return-void
.end method

.method invalidateSpecValues()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->resetPropertiesForNewStart()V

    return-void
.end method

.method protected registerDrawable(Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    return-void
.end method

.method resetPropertiesForNewStart()V
    .locals 3

    const/4 v0, 0x1

    .line 88
    iput v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactorTarget:I

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->setMorphFactor(F)V

    .line 90
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->indicatorState:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;

    iget-object v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorColors:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->color:I

    return-void
.end method

.method setAnimationFraction(F)V
    .locals 1

    .line 164
    iput p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->animationFraction:F

    const v0, 0x44228000    # 650.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 166
    invoke-direct {p0, p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->updateIndicatorRotation(I)V

    .line 167
    iget-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method setMorphFactor(F)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactor:F

    .line 179
    invoke-direct {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->updateIndicatorShapeAndColor()V

    .line 180
    iget-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method setMorphFactorTarget(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactorTarget:I

    return-void
.end method

.method startAnimator()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->maybeInitializeAnimators()V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->resetPropertiesForNewStart()V

    .line 70
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->morphFactorTarget:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 71
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
