.class public Lcom/google/android/material/shape/ShapePath$PathCubicOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathCubicOperation"
.end annotation


# instance fields
.field private controlX1:F

.field private controlX2:F

.field private controlY1:F

.field private controlY2:F

.field private endX:F

.field private endY:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 775
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    .line 776
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setControlX1(F)V

    .line 777
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setControlY1(F)V

    .line 778
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setControlX2(F)V

    .line 779
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setControlY2(F)V

    .line 780
    invoke-direct {p0, p5}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setEndX(F)V

    .line 781
    invoke-direct {p0, p6}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setEndY(F)V

    return-void
.end method

.method private getControlX1()F
    .locals 1

    .line 794
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX1:F

    return v0
.end method

.method private getControlX2()F
    .locals 1

    .line 810
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX2:F

    return v0
.end method

.method private getControlY1()F
    .locals 1

    .line 802
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY1:F

    return v0
.end method

.method private getControlY2()F
    .locals 1

    .line 818
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY1:F

    return v0
.end method

.method private getEndX()F
    .locals 1

    .line 826
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endX:F

    return v0
.end method

.method private getEndY()F
    .locals 1

    .line 834
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endY:F

    return v0
.end method

.method private setControlX1(F)V
    .locals 0

    .line 798
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX1:F

    return-void
.end method

.method private setControlX2(F)V
    .locals 0

    .line 814
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX2:F

    return-void
.end method

.method private setControlY1(F)V
    .locals 0

    .line 806
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY1:F

    return-void
.end method

.method private setControlY2(F)V
    .locals 0

    .line 822
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY2:F

    return-void
.end method

.method private setEndX(F)V
    .locals 0

    .line 830
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endX:F

    return-void
.end method

.method private setEndY(F)V
    .locals 0

    .line 838
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endY:F

    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 8

    .line 786
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->matrix:Landroid/graphics/Matrix;

    .line 787
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 788
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 789
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX1:F

    iget v3, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY1:F

    iget v4, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX2:F

    iget v5, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY2:F

    iget v6, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endX:F

    iget v7, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endY:F

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 790
    invoke-virtual {v1, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
