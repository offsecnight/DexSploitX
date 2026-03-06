.class public Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;
.super Ljava/lang/Object;
.source "DrawingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/DrawingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActiveIndicator"
.end annotation


# instance fields
.field amplitudeFraction:F

.field color:I

.field endFraction:F

.field gapSize:I

.field isDeterminate:Z

.field phaseFraction:F

.field rotationDegree:F

.field startFraction:F


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 174
    iput v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->amplitudeFraction:F

    return-void
.end method
