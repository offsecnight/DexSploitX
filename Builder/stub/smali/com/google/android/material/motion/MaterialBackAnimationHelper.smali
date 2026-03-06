.class public abstract Lcom/google/android/material/motion/MaterialBackAnimationHelper;
.super Ljava/lang/Object;
.source "MaterialBackAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CANCEL_DURATION_DEFAULT:I = 0x64

.field private static final HIDE_DURATION_MAX_DEFAULT:I = 0x12c

.field private static final HIDE_DURATION_MIN_DEFAULT:I = 0x96

.field private static final TAG:Ljava/lang/String; = "MaterialBackHelper"


# instance fields
.field private backEvent:Landroidx/activity/BackEventCompat;

.field protected final cancelDuration:I

.field protected final hideDurationMax:I

.field protected final hideDurationMin:I

.field private final progressInterpolator:Landroid/animation/TimeInterpolator;

.field protected final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->progressInterpolator:Landroid/animation/TimeInterpolator;

    .line 56
    iput-object p1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 59
    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium2:I

    const/16 v1, 0x12c

    .line 60
    invoke-static {p1, v0, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->hideDurationMax:I

    .line 62
    sget v0, Lcom/google/android/material/R$attr;->motionDurationShort3:I

    const/16 v1, 0x96

    .line 63
    invoke-static {p1, v0, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->hideDurationMin:I

    .line 65
    sget v0, Lcom/google/android/material/R$attr;->motionDurationShort2:I

    const/16 v1, 0x64

    .line 66
    invoke-static {p1, v0, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->cancelDuration:I

    return-void
.end method


# virtual methods
.method public interpolateProgress(F)F
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->progressInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method

.method protected onCancelBackProgress()Landroidx/activity/BackEventCompat;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    if-nez v0, :cond_0

    .line 98
    const-string v0, "MaterialBackHelper"

    const-string v1, "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    return-object v0
.end method

.method public onHandleBackInvoked()Landroidx/activity/BackEventCompat;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    return-object v0
.end method

.method protected onStartBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    return-void
.end method

.method protected onUpdateBackProgress(Landroidx/activity/BackEventCompat;)Landroidx/activity/BackEventCompat;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "MaterialBackHelper"

    const-string v1, "Must call startBackProgress() before updateBackProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    .line 84
    iput-object p1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    return-object v0
.end method
