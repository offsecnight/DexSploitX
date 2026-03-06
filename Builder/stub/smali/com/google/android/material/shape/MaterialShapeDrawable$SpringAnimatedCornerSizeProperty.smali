.class Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "MaterialShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/MaterialShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpringAnimatedCornerSizeProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/google/android/material/shape/MaterialShapeDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cornerSizeAtIndex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    .line 1690
    iput p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;->index:I

    return-void
.end method


# virtual methods
.method public getValue(Lcom/google/android/material/shape/MaterialShapeDrawable;)F
    .locals 1

    .line 1695
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->access$400(Lcom/google/android/material/shape/MaterialShapeDrawable;)[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1696
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->access$400(Lcom/google/android/material/shape/MaterialShapeDrawable;)[F

    move-result-object p1

    iget v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;->index:I

    aget p1, p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1684
    check-cast p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;->getValue(Lcom/google/android/material/shape/MaterialShapeDrawable;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/google/android/material/shape/MaterialShapeDrawable;F)V
    .locals 2

    .line 1702
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->access$400(Lcom/google/android/material/shape/MaterialShapeDrawable;)[F

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1703
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->access$400(Lcom/google/android/material/shape/MaterialShapeDrawable;)[F

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;->index:I

    aget v0, v0, v1

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 1704
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->access$400(Lcom/google/android/material/shape/MaterialShapeDrawable;)[F

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;->index:I

    aput p2, v0, v1

    .line 1705
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->access$500(Lcom/google/android/material/shape/MaterialShapeDrawable;)Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1706
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->access$500(Lcom/google/android/material/shape/MaterialShapeDrawable;)Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getCornerSizeDiffX()F

    move-result v0

    invoke-interface {p2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;->onCornerSizeChange(F)V

    .line 1708
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
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

    .line 1684
    check-cast p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;->setValue(Lcom/google/android/material/shape/MaterialShapeDrawable;F)V

    return-void
.end method
