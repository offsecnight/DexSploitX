.class public Lcom/google/android/material/animation/MotionTiming;
.super Ljava/lang/Object;
.source "MotionTiming.java"


# instance fields
.field private delay:J

.field private duration:J

.field private interpolator:Landroid/animation/TimeInterpolator;

.field private repeatCount:I

.field private repeatMode:I


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    .line 37
    iput-wide p1, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 38
    iput-wide p3, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    return-void
.end method

.method public constructor <init>(JJLandroid/animation/TimeInterpolator;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    .line 42
    iput-wide p1, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 43
    iput-wide p3, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 44
    iput-object p5, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method static createFromAnimator(Landroid/animation/ValueAnimator;)Lcom/google/android/material/animation/MotionTiming;
    .locals 6

    .line 80
    new-instance v0, Lcom/google/android/material/animation/MotionTiming;

    .line 82
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJLandroid/animation/TimeInterpolator;)V

    .line 83
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    .line 84
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result p0

    iput p0, v0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/animation/Animator;)V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    instance-of v0, p1, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 93
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/animation/MotionTiming;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 97
    :cond_1
    check-cast p1, Lcom/google/android/material/animation/MotionTiming;

    .line 99
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    return v1

    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v2

    if-eq v0, v2, :cond_4

    return v1

    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v2

    if-eq v0, v2, :cond_5

    return v1

    .line 111
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDelay()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 116
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 117
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v5

    ushr-long v3, v5, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 119
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 120
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, " delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, " duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, " interpolator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, " repeatCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, " repeatMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
