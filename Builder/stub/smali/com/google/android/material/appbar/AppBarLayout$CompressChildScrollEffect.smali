.class public Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;
.super Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompressChildScrollEffect"
.end annotation


# static fields
.field private static final COMPRESS_DISTANCE_FACTOR:F = 0.3f


# instance fields
.field private final ghostRect:Landroid/graphics/Rect;

.field private final relativeRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2624
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;-><init>()V

    .line 2632
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    .line 2633
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    return-void
.end method

.method private static updateRelativeRect(Landroid/graphics/Rect;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)V
    .locals 0

    .line 2636
    invoke-virtual {p2, p0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2638
    invoke-virtual {p1, p2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2639
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p1

    neg-int p1, p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;F)V
    .locals 4

    .line 2645
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->updateRelativeRect(Landroid/graphics/Rect;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)V

    .line 2646
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr p1, p3

    const/4 p3, 0x0

    cmpg-float v0, p1, p3

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_1

    .line 2652
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0, p3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    neg-float p1, p1

    sub-float v0, v1, v0

    mul-float/2addr v0, v0

    sub-float v0, v1, v0

    .line 2662
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    sub-float/2addr p1, v2

    .line 2667
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 2672
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2673
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    neg-float v2, p1

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2677
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 2678
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2680
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2682
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 2685
    invoke-virtual {p2, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 2686
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 2687
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
