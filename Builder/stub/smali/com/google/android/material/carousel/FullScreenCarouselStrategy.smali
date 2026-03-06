.class public Lcom/google/android/material/carousel/FullScreenCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "FullScreenCarouselStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 12

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 51
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result p1

    .line 53
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result p1

    .line 56
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr v1, v0

    int-to-float v0, v1

    int-to-float v11, p1

    add-float v1, v11, v0

    .line 58
    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 59
    new-instance v1, Lcom/google/android/material/carousel/Arrangement;

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/material/carousel/Arrangement;-><init>(IFFFIFIFIF)V

    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 71
    invoke-static {p2, v0, p1, v1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->createLeftAlignedKeylineState(Landroid/content/Context;FILcom/google/android/material/carousel/Arrangement;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    return-object p1
.end method
