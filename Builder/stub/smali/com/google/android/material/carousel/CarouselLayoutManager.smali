.class public Lcom/google/android/material/carousel/CarouselLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "CarouselLayoutManager.java"

# interfaces
.implements Lcom/google/android/material/carousel/Carousel;
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/CarouselLayoutManager$LayoutDirection;,
        Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;,
        Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;,
        Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;
    }
.end annotation


# static fields
.field public static final ALIGNMENT_CENTER:I = 0x1

.field public static final ALIGNMENT_START:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarouselLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private carouselAlignment:I

.field private carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

.field private currentEstimatedPosition:I

.field private currentFillStartPosition:I

.field private currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

.field private final debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

.field private isDebuggingEnabled:Z

.field private keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

.field private keylineStatePositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field private lastItemCount:I

.field maxScroll:I

.field minScroll:I

.field private orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

.field private final recyclerViewSizeChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field scrollOffset:I


# direct methods
.method public static synthetic $r8$lambda$EVyYoVT11DpL60suE9bxns8qbCM(Lcom/google/android/material/carousel/CarouselLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 185
    new-instance v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    invoke-direct {v0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;-><init>(Lcom/google/android/material/carousel/CarouselStrategy;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 200
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 p3, 0x0

    .line 98
    iput-boolean p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    .line 99
    new-instance p4, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    invoke-direct {p4}, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;-><init>()V

    iput-object p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    .line 109
    iput p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 122
    new-instance p4, Lcom/google/android/material/carousel/CarouselLayoutManager$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/google/android/material/carousel/CarouselLayoutManager$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V

    iput-object p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->recyclerViewSizeChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 p4, -0x1

    .line 143
    iput p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentEstimatedPosition:I

    .line 154
    iput p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselAlignment:I

    .line 201
    new-instance p3, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    invoke-direct {p3}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;-><init>()V

    invoke-virtual {p0, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setCarouselStrategy(Lcom/google/android/material/carousel/CarouselStrategy;)V

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setCarouselAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/carousel/CarouselStrategy;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;-><init>(Lcom/google/android/material/carousel/CarouselStrategy;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/carousel/CarouselStrategy;I)V
    .locals 2

    .line 193
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    .line 99
    new-instance v1, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    invoke-direct {v1}, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    .line 109
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 122
    new-instance v1, Lcom/google/android/material/carousel/CarouselLayoutManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/material/carousel/CarouselLayoutManager$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->recyclerViewSizeChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v1, -0x1

    .line 143
    iput v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentEstimatedPosition:I

    .line 154
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselAlignment:I

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setCarouselStrategy(Lcom/google/android/material/carousel/CarouselStrategy;)V

    .line 195
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/KeylineStateList;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/carousel/CarouselLayoutManager;)I
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentTop()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/carousel/CarouselLayoutManager;)I
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentBottom()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/carousel/CarouselLayoutManager;)I
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentLeft()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/carousel/CarouselLayoutManager;)I
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentRight()I

    move-result p0

    return p0
.end method

.method private addAndLayoutView(Landroid/view/View;ILcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;)V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 605
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addView(Landroid/view/View;I)V

    const/4 p2, 0x0

    .line 606
    invoke-virtual {p0, p1, p2, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 607
    iget p2, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->offsetCenter:F

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 608
    iget v1, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->offsetCenter:F

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 609
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->layoutDecoratedWithMargins(Landroid/view/View;II)V

    .line 610
    iget p2, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->center:F

    iget-object p3, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->range:Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateChildMaskForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    return-void
.end method

.method private addEnd(FF)F
    .locals 1

    .line 1121
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    sub-float/2addr p1, p2

    return p1

    :cond_0
    add-float/2addr p1, p2

    return p1
.end method

.method private addStart(FF)F
    .locals 1

    .line 1116
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    add-float/2addr p1, p2

    return p1

    :cond_0
    sub-float/2addr p1, p2

    return p1
.end method

.method private addViewAtPosition(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 1

    if-ltz p2, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getItemCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildStartForFill(I)F

    move-result v0

    .line 482
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->makeChildCalculations(Landroidx/recyclerview/widget/RecyclerView$Recycler;FI)Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    move-result-object p1

    .line 484
    iget-object p2, p1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->child:Landroid/view/View;

    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addAndLayoutView(Landroid/view/View;ILcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addViewsEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 6

    .line 496
    invoke-direct {p0, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildStartForFill(I)F

    move-result v0

    .line 497
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge p3, v1, :cond_2

    .line 498
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    move-result v1

    .line 499
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 500
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    move-result-object v2

    .line 502
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildOffsetCenterForLocation(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    move-result v3

    .line 503
    invoke-direct {p0, v3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsEnd(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 506
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    move-result v0

    .line 510
    invoke-direct {p0, v3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsStart(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 513
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    .line 515
    new-instance v5, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    invoke-direct {v5, v4, v1, v3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;-><init>(Landroid/view/View;FFLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    const/4 v1, -0x1

    invoke-direct {p0, v4, v1, v5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addAndLayoutView(Landroid/view/View;ILcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private addViewsStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 7

    .line 445
    invoke-direct {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildStartForFill(I)F

    move-result v0

    :goto_0
    if-ltz p2, :cond_2

    .line 447
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    move-result v1

    .line 448
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 449
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    move-result-object v2

    .line 451
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildOffsetCenterForLocation(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    move-result v4

    .line 452
    invoke-direct {p0, v4, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsStart(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 455
    :cond_0
    iget-object v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addStart(FF)F

    move-result v0

    .line 459
    invoke-direct {p0, v4, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsEnd(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 462
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 464
    new-instance v6, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    invoke-direct {v6, v5, v1, v4, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;-><init>(Landroid/view/View;FFLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    invoke-direct {p0, v5, v3, v6}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addAndLayoutView(Landroid/view/View;ILcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;)V

    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private calculateChildOffsetCenterForLocation(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F
    .locals 4

    .line 923
    iget-object v0, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget-object v1, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget-object v2, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    iget-object v3, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 924
    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    .line 937
    iget-object v1, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 938
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 942
    :cond_1
    :goto_0
    iget-object v1, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr p1, v1

    iget-object p2, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget p2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private calculateChildStartForFill(I)F
    .locals 2

    .line 908
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentStart()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 909
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    .line 911
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    move-result p1

    return p1
.end method

.method private calculateEndScroll(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/material/carousel/KeylineStateList;)I
    .locals 4

    .line 876
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineStateList;->getStartState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineStateList;->getEndState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p2

    :goto_0
    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    .line 882
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    int-to-float p1, p1

    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p2

    mul-float/2addr p1, p2

    if-eqz v0, :cond_2

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_2

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_2
    mul-float/2addr p1, p2

    .line 884
    iget p2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentStart()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    sub-float/2addr p1, p2

    if-eqz v0, :cond_3

    const/4 v2, -0x1

    :cond_3
    int-to-float p2, v2

    .line 893
    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    mul-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    if-eqz v0, :cond_4

    .line 894
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_4
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private static calculateShouldScrollBy(IIII)I
    .locals 1

    add-int v0, p1, p0

    if-ge v0, p2, :cond_0

    sub-int/2addr p2, p1

    return p2

    :cond_0
    if-le v0, p3, :cond_1

    sub-int/2addr p3, p1

    return p3

    :cond_1
    return p0
.end method

.method private calculateStartScroll(Lcom/google/android/material/carousel/KeylineStateList;)I
    .locals 2

    .line 862
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getEndState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getStartState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_1

    .line 865
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    .line 866
    :goto_1
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addStart(FF)F

    move-result p1

    .line 868
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentStart()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 5

    .line 1342
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_b

    const/4 v3, 0x2

    if-eq p1, v3, :cond_a

    const/16 v3, 0x11

    const/high16 v4, -0x80000000

    if-eq p1, v3, :cond_7

    const/16 v3, 0x21

    if-eq p1, v3, :cond_5

    const/16 v3, 0x42

    if-eq p1, v3, :cond_2

    const/16 v1, 0x82

    if-eq p1, v1, :cond_0

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown focus request:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarouselLayoutManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v4

    :cond_2
    if-nez v0, :cond_4

    .line 1363
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    return v4

    :cond_5
    if-ne v0, v2, :cond_6

    return v1

    :cond_6
    return v4

    :cond_7
    if-nez v0, :cond_9

    .line 1358
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    return v1

    :cond_9
    return v4

    :cond_a
    return v2

    :cond_b
    return v1
.end method

.method private fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 408
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->removeAndRecycleOutOfBoundsViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 410
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewsStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 413
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewsEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 416
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 417
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    .line 418
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewsStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    add-int/lit8 v1, v1, 0x1

    .line 419
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewsEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 422
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->validateChildOrderIfDebugging()V

    return-void
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1422
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1412
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getContainerSize()I
    .locals 1

    .line 1104
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerWidth()I

    move-result v0

    return v0

    .line 1107
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerHeight()I

    move-result v0

    return v0
.end method

.method private getDecoratedCenterWithMargins(Landroid/view/View;)F
    .locals 1

    .line 689
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 690
    invoke-super {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 691
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 692
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    return p1

    .line 694
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    goto :goto_0
.end method

.method private getItemMargins()I
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 369
    invoke-virtual {p0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 370
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    iget v1, v1, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    if-nez v1, :cond_0

    .line 371
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    :goto_0
    add-int/2addr v1, v0

    return v1

    .line 373
    :cond_0
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getKeylineStartingState(Lcom/google/android/material/carousel/KeylineStateList;)Lcom/google/android/material/carousel/KeylineState;
    .locals 1

    .line 813
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getEndState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getStartState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    return-object p1
.end method

.method private getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;
    .locals 3

    .line 1237
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStatePositionMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1239
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v2, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1238
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/KeylineState;

    if-eqz p1, :cond_0

    return-object p1

    .line 1244
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    return-object p1
.end method

.method private getLeftOrTopPaddingForKeylineShift()I
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingTop()I

    move-result v0

    return v0

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method private getMaskedItemSizeForLocOffset(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F
    .locals 3

    .line 962
    iget-object v0, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget-object v1, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget-object v2, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget-object p2, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget p2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-static {v0, v1, v2, p2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    return p1
.end method

.method private getParentBottom()I
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getParentBottom()I

    move-result v0

    return v0
.end method

.method private getParentLeft()I
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getParentLeft()I

    move-result v0

    return v0
.end method

.method private getParentRight()I
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getParentRight()I

    move-result v0

    return v0
.end method

.method private getParentStart()I
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getParentStart()I

    move-result v0

    return v0
.end method

.method private getParentTop()I
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getParentTop()I

    move-result v0

    return v0
.end method

.method private getRightOrBottomPaddingForKeylineShift()I
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingBottom()I

    move-result v0

    return v0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method private getScrollOffsetForPosition(ILcom/google/android/material/carousel/KeylineState;)I
    .locals 3

    .line 1145
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 1147
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v0, v2

    int-to-float p1, p1

    .line 1148
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v2

    mul-float/2addr p1, v2

    sub-float/2addr v0, p1

    .line 1149
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p1

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_0
    int-to-float p1, p1

    .line 1152
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    mul-float/2addr p1, v0

    .line 1153
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr p1, v0

    .line 1154
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p2

    div-float/2addr p2, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method private getSmallestScrollOffsetToFocalKeyline(ILcom/google/android/material/carousel/KeylineState;)I
    .locals 6

    .line 1161
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getFocalKeylines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    int-to-float v3, p1

    .line 1162
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v4

    mul-float/2addr v3, v4

    .line 1163
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1167
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1168
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    move-result v4

    int-to-float v4, v4

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v4, v2

    sub-float/2addr v4, v3

    float-to-int v2, v4

    goto :goto_1

    .line 1169
    :cond_1
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v3, v2

    float-to-int v2, v3

    .line 1170
    :goto_1
    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    sub-int/2addr v2, v3

    .line 1172
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;FZ)",
            "Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;"
        }
    .end annotation

    const/4 v0, -0x1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v2, -0x800001

    const/4 v3, 0x0

    move v6, v0

    move v7, v6

    move v8, v7

    move v9, v8

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v2

    .line 769
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_5

    .line 770
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-eqz p2, :cond_0

    .line 771
    iget v10, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    goto :goto_1

    :cond_0
    iget v10, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    :goto_1
    sub-float v11, v10, p1

    .line 772
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v12, v10, p1

    if-gtz v12, :cond_1

    cmpg-float v12, v11, v1

    if-gtz v12, :cond_1

    move v6, v5

    move v1, v11

    :cond_1
    cmpl-float v12, v10, p1

    if-lez v12, :cond_2

    cmpg-float v12, v11, v2

    if-gtz v12, :cond_2

    move v8, v5

    move v2, v11

    :cond_2
    cmpg-float v11, v10, v3

    if-gtz v11, :cond_3

    move v7, v5

    move v3, v10

    :cond_3
    cmpl-float v11, v10, v4

    if-lez v11, :cond_4

    move v9, v5

    move v4, v10

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-ne v6, v0, :cond_6

    move v6, v7

    :cond_6
    if-ne v8, v0, :cond_7

    move v8, v9

    .line 808
    :cond_7
    new-instance p1, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 809
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-direct {p1, p2, p0}, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;-><init>(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;)V

    return-object p1
.end method

.method private isLocOffsetOutOfFillBoundsEnd(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z
    .locals 2

    .line 649
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getMaskedItemSizeForLocOffset(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 650
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addStart(FF)F

    move-result p1

    .line 651
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private isLocOffsetOutOfFillBoundsStart(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z
    .locals 2

    .line 626
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getMaskedItemSizeForLocOffset(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 627
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    move-result p1

    .line 628
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private logChildrenIfDebugging()V
    .locals 6

    .line 522
    iget-boolean v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    .line 526
    const-string v1, "CarouselLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    const-string v0, "internal representation of views on the screen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 528
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 529
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 530
    invoke-direct {p0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getDecoratedCenterWithMargins(Landroid/view/View;)F

    move-result v3

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "item position "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", center:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", child index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    :cond_1
    const-string v0, "=============="

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private makeChildCalculations(Landroidx/recyclerview/widget/RecyclerView$Recycler;FI)Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;
    .locals 2

    .line 583
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x0

    .line 584
    invoke-virtual {p0, p1, p3, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 586
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    move-result p2

    .line 587
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 588
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    move-result-object p3

    .line 590
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildOffsetCenterForLocation(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    move-result v0

    .line 591
    new-instance v1, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    invoke-direct {v1, p1, p2, v0, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;-><init>(Landroid/view/View;FFLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    return-object v1
.end method

.method private offsetChild(Landroid/view/View;FFLandroid/graphics/Rect;)F
    .locals 2

    .line 1530
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    move-result p2

    .line 1531
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 1532
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    move-result-object v0

    .line 1533
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildOffsetCenterForLocation(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    move-result v1

    .line 1536
    invoke-super {p0, p1, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1537
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateChildMaskForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    .line 1538
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    invoke-virtual {p2, p1, p4, p3, v1}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->offsetChild(Landroid/view/View;Landroid/graphics/Rect;FF)V

    return v1
.end method

.method private recalculateKeylineStateList(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 6

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 355
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 356
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/carousel/CarouselStrategy;->onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    .line 360
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/material/carousel/KeylineState;->reverse(Lcom/google/android/material/carousel/KeylineState;I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 361
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getItemMargins()I

    move-result p1

    int-to-float v2, p1

    .line 362
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getLeftOrTopPaddingForKeylineShift()I

    move-result p1

    int-to-float v3, p1

    .line 363
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getRightOrBottomPaddingForKeylineShift()I

    move-result p1

    int-to-float v4, p1

    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    .line 364
    invoke-virtual {p1}, Lcom/google/android/material/carousel/CarouselStrategy;->getStrategyType()Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    move-result-object v5

    move-object v0, p0

    .line 358
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineStateList;->from(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineStateList;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    return-void
.end method

.method private refreshKeylineState()V
    .locals 1

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 383
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->requestLayout()V

    return-void
.end method

.method private removeAndRecycleOutOfBoundsViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 4

    .line 708
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 709
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 710
    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getDecoratedCenterWithMargins(Landroid/view/View;)F

    move-result v2

    .line 711
    iget-object v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 712
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    move-result-object v3

    .line 713
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsStart(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_0

    .line 721
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 723
    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getDecoratedCenterWithMargins(Landroid/view/View;)F

    move-result v2

    .line 724
    iget-object v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 725
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    move-result-object v3

    .line 726
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLocOffsetOutOfFillBoundsEnd(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 727
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 9

    .line 1473
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    if-nez v0, :cond_1

    .line 1478
    invoke-direct {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->recalculateKeylineStateList(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1483
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-direct {p0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStartingState(Lcom/google/android/material/carousel/KeylineStateList;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getTotalVisibleFocalItems()I

    move-result v2

    if-gt v0, v2, :cond_2

    return v1

    .line 1488
    :cond_2
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateShouldScrollBy(IIII)I

    move-result p1

    .line 1489
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 1490
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateCurrentKeylineStateForScrollOffset(Lcom/google/android/material/carousel/KeylineStateList;)V

    .line 1492
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 1493
    invoke-virtual {p0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1494
    invoke-direct {p0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildStartForFill(I)F

    move-result v2

    .line 1495
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1497
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1498
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    goto :goto_0

    .line 1499
    :cond_3
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    :goto_0
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 1501
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 1502
    invoke-virtual {p0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1503
    invoke-direct {p0, v6, v2, v0, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->offsetChild(Landroid/view/View;FFLandroid/graphics/Rect;)F

    move-result v7

    sub-float v7, v4, v7

    .line 1504
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    if-eqz v6, :cond_4

    cmpg-float v8, v7, v5

    if-gez v8, :cond_4

    .line 1507
    invoke-virtual {p0, v6}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentEstimatedPosition:I

    move v5, v7

    .line 1509
    :cond_4
    iget-object v6, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v6}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v6

    invoke-direct {p0, v2, v6}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addEnd(FF)F

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1513
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method private scrollBy(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1454
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1455
    invoke-virtual {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void

    .line 1457
    :cond_0
    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method private setCarouselAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 208
    sget-object v0, Lcom/google/android/material/R$styleable;->Carousel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 209
    sget p2, Lcom/google/android/material/R$styleable;->Carousel_carousel_alignment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setCarouselAlignment(I)V

    .line 210
    sget p2, Landroidx/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    .line 211
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 210
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setOrientation(I)V

    .line 214
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private updateChildMaskForLocation(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V
    .locals 8

    .line 979
    instance-of v0, p1, Lcom/google/android/material/carousel/Maskable;

    if-nez v0, :cond_0

    return-void

    .line 985
    :cond_0
    iget-object v0, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget-object v1, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget-object v2, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->leftOrTop:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    iget-object v3, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->rightOrBottom:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 986
    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    .line 993
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 994
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 997
    invoke-static {v5, v4, v5, v6, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v4

    div-float v7, v1, v3

    .line 998
    invoke-static {v5, v7, v5, v6, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    .line 1000
    iget-object v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    invoke-virtual {v5, v1, v2, v0, v4}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->getMaskRect(FFFF)Landroid/graphics/RectF;

    move-result-object v0

    .line 1002
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateChildOffsetCenterForLocation(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    move-result p2

    .line 1003
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v3

    sub-float p3, p2, p3

    .line 1004
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v1, p2

    .line 1005
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v3

    sub-float v2, p2, v2

    .line 1006
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr p2, v4

    .line 1008
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2, p3, p2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1009
    new-instance p2, Landroid/graphics/RectF;

    .line 1010
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentLeft()I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentTop()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentRight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getParentBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p2, p3, v1, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1015
    iget-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    invoke-virtual {p3}, Lcom/google/android/material/carousel/CarouselStrategy;->getStrategyType()Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    move-result-object p3

    sget-object v1, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->CONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    if-ne p3, v1, :cond_1

    .line 1016
    iget-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    invoke-virtual {p3, v0, v3, p2}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->containMaskWithinBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 1021
    :cond_1
    iget-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    invoke-virtual {p3, v0, v3, p2}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->moveMaskOnEdgeOutsideBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 1022
    check-cast p1, Lcom/google/android/material/carousel/Maskable;

    invoke-interface {p1, v0}, Lcom/google/android/material/carousel/Maskable;->setMaskRectF(Landroid/graphics/RectF;)V

    return-void
.end method

.method private updateCurrentKeylineStateForScrollOffset(Lcom/google/android/material/carousel/KeylineStateList;)V
    .locals 3

    .line 823
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    if-gt v0, v1, :cond_0

    .line 826
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStartingState(Lcom/google/android/material/carousel/KeylineStateList;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    goto :goto_0

    .line 828
    :cond_0
    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    int-to-float v2, v2

    int-to-float v1, v1

    int-to-float v0, v0

    .line 829
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/material/carousel/KeylineStateList;->getShiftedState(FFF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 831
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->setKeylines(Ljava/util/List;)V

    return-void
.end method

.method private updateItemCount()V
    .locals 3

    .line 1654
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getItemCount()I

    move-result v0

    .line 1656
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->lastItemCount:I

    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1659
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    invoke-virtual {v2, p0, v1}, Lcom/google/android/material/carousel/CarouselStrategy;->shouldRefreshKeylineState(Lcom/google/android/material/carousel/Carousel;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1660
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    .line 1662
    :cond_1
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->lastItemCount:I

    :cond_2
    :goto_0
    return-void
.end method

.method private validateChildOrderIfDebugging()V
    .locals 7

    .line 547
    iget-boolean v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 551
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    .line 552
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    .line 553
    invoke-virtual {p0, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-gt v2, v4, :cond_1

    move v0, v3

    goto :goto_0

    .line 555
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->logChildrenIfDebugging()V

    .line 556
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Detected invalid child order. Child at index ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] had adapter position ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] and child at index ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method calculateScrollDeltaToMakePositionVisible(I)I
    .locals 1

    .line 1294
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    .line 1296
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getScrollOffsetForPosition(ILcom/google/android/material/carousel/KeylineState;)I

    move-result p1

    int-to-float p1, p1

    .line 1297
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 1302
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 1312
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 1566
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 1570
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 1571
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1554
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1583
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1186
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    .line 1187
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOffsetToScrollToPosition(ILcom/google/android/material/carousel/KeylineState;)I

    move-result p1

    .line 1188
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1189
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 1191
    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 1593
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 1596
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 1597
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 1598
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1588
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1603
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 265
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getCarouselAlignment()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselAlignment:I

    return v0
.end method

.method public getContainerHeight()I
    .locals 1

    .line 1096
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContainerWidth()I
    .locals 1

    .line 1091
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 670
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 671
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    .line 672
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentKeylineState:Lcom/google/android/material/carousel/KeylineState;

    .line 677
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSurroundingKeylineRange(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    move-result-object v0

    .line 676
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getMaskedItemSizeForLocOffset(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    move-result p1

    .line 678
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 679
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    div-float/2addr v2, v1

    .line 681
    :goto_1
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v0, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {p2, p1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method getOffsetToScrollToPosition(ILcom/google/android/material/carousel/KeylineState;)I
    .locals 0

    .line 1201
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getScrollOffsetForPosition(ILcom/google/android/material/carousel/KeylineState;)I

    move-result p1

    .line 1202
    iget p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    sub-int/2addr p1, p2

    return p1
.end method

.method getOffsetToScrollToPositionForSnap(IZ)I
    .locals 5

    .line 1221
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    int-to-float v3, v3

    const/4 v4, 0x1

    .line 1222
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/carousel/KeylineStateList;->getShiftedState(FFFZ)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    .line 1223
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOffsetToScrollToPosition(ILcom/google/android/material/carousel/KeylineState;)I

    move-result v0

    .line 1225
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStatePositionMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1226
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOffsetToScrollToPosition(ILcom/google/android/material/carousel/KeylineState;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 1229
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge p2, v1, :cond_1

    return p1

    :cond_1
    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1614
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    iget v0, v0, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHorizontal()Z
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    iget v0, v0, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isLayoutRtl()Z
    .locals 2

    .line 1111
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$new$0$com-google-android-material-carousel-CarouselLayoutManager(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 0
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_1

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 126
    :cond_1
    :goto_0
    new-instance p2, Lcom/google/android/material/carousel/CarouselLayoutManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/google/android/material/carousel/CarouselLayoutManager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 7

    .line 1027
    instance-of v0, p1, Lcom/google/android/material/carousel/Maskable;

    if-eqz v0, :cond_2

    .line 1033
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1035
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1036
    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1037
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 1038
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 1044
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    iget v1, v1, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    if-nez v1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    goto :goto_0

    .line 1046
    :cond_0
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    int-to-float v1, v1

    .line 1048
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    iget v2, v2, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1049
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v2

    goto :goto_1

    .line 1050
    :cond_1
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    int-to-float v2, v2

    .line 1053
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getWidth()I

    move-result v3

    .line 1054
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getWidthMode()I

    move-result v4

    .line 1055
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p2

    float-to-int p2, v1

    .line 1057
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 1052
    invoke-static {v3, v4, v5, p2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 1061
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getHeight()I

    move-result v1

    .line 1062
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getHeightMode()I

    move-result v3

    .line 1063
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v0

    add-int/2addr v4, p3

    float-to-int p3, v2

    .line 1065
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->canScrollVertically()Z

    move-result v0

    .line 1060
    invoke-static {v1, v3, v4, p3, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p3

    .line 1066
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void

    .line 1028
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyItemSizeChanged()V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 280
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 281
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/carousel/CarouselStrategy;->initialize(Landroid/content/Context;)V

    .line 282
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    .line 283
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->recyclerViewSizeChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 288
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 289
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->recyclerViewSizeChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1376
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    .line 1380
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p2

    const/high16 p4, -0x80000000

    if-ne p2, p4, :cond_1

    return-object v0

    :cond_1
    const/4 p4, -0x1

    if-ne p2, p4, :cond_3

    .line 1387
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    .line 1390
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 1391
    invoke-direct {p0, p3, p2, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewAtPosition(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1392
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1394
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_4

    return-object v0

    .line 1397
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 1398
    invoke-direct {p0, p3, p1, p4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->addViewAtPosition(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1399
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1126
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1127
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1128
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1129
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1637
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1638
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateItemCount()V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1649
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1650
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateItemCount()V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1643
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1644
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateItemCount()V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 294
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v0

    .line 302
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_2

    .line 307
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineStateList;->getDefaultState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getCarouselSize()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerSize()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 308
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->recalculateKeylineStateList(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 312
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-direct {p0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateStartScroll(Lcom/google/android/material/carousel/KeylineStateList;)I

    move-result v2

    .line 313
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-direct {p0, p2, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateEndScroll(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/material/carousel/KeylineStateList;)I

    move-result v4

    if-eqz v0, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v2

    .line 318
    :goto_1
    iput v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    if-eqz v0, :cond_5

    move v4, v2

    .line 319
    :cond_5
    iput v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    if-eqz v3, :cond_6

    .line 323
    iput v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 324
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    .line 326
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getItemCount()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    iget v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isLayoutRtl()Z

    move-result v5

    .line 325
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/material/carousel/KeylineStateList;->getKeylineStateForPositionMap(IIIZ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStatePositionMap:Ljava/util/Map;

    .line 327
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentEstimatedPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 330
    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v2

    .line 329
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getScrollOffsetForPosition(ILcom/google/android/material/carousel/KeylineState;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 336
    :cond_6
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateShouldScrollBy(IIII)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 339
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 341
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateCurrentKeylineStateForScrollOffset(Lcom/google/android/material/carousel/KeylineStateList;)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 345
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getItemCount()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->lastItemCount:I

    return-void

    .line 295
    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 296
    iput v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 427
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 428
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 429
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 434
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->validateChildOrderIfDebugging()V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 1

    .line 1433
    iget-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return p4

    .line 1438
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p5

    invoke-direct {p0, p5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p5

    .line 1437
    invoke-direct {p0, p3, p5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSmallestScrollOffsetToFocalKeyline(ILcom/google/android/material/carousel/KeylineState;)I

    move-result p3

    if-nez p3, :cond_1

    return p4

    .line 1444
    :cond_1
    iget p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    iget p5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    invoke-static {p3, p4, p5, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateShouldScrollBy(IIII)I

    move-result p3

    .line 1445
    iget-object p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    iget p5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    add-int/2addr p5, p3

    int-to-float p3, p5

    iget p5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->minScroll:I

    int-to-float p5, p5

    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->maxScroll:I

    int-to-float v0, v0

    .line 1446
    invoke-virtual {p4, p3, p5, v0}, Lcom/google/android/material/carousel/KeylineStateList;->getShiftedState(FFF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p3

    .line 1448
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getSmallestScrollOffsetToFocalKeyline(ILcom/google/android/material/carousel/KeylineState;)I

    move-result p2

    .line 1449
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollBy(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1307
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 1249
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentEstimatedPosition:I

    .line 1250
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    if-nez v0, :cond_0

    return-void

    .line 1253
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getKeylineStateForPosition(I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getScrollOffsetForPosition(ILcom/google/android/material/carousel/KeylineState;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollOffset:I

    .line 1254
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->currentFillStartPosition:I

    .line 1255
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->keylineStateList:Lcom/google/android/material/carousel/KeylineStateList;

    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->updateCurrentKeylineStateForScrollOffset(Lcom/google/android/material/carousel/KeylineStateList;)V

    .line 1256
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1317
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCarouselAlignment(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselAlignment:I

    .line 231
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    return-void
.end method

.method public setCarouselStrategy(Lcom/google/android/material/carousel/CarouselStrategy;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->carouselStrategy:Lcom/google/android/material/carousel/CarouselStrategy;

    .line 275
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    return-void
.end method

.method public setDebuggingEnabled(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 1

    .line 1679
    iput-boolean p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->isDebuggingEnabled:Z

    .line 1680
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    if-eqz p2, :cond_0

    .line 1682
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->debugItemDecoration:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1684
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1624
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid orientation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1627
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1629
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/google/android/material/carousel/CarouselOrientationHelper;->orientation:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 1630
    :cond_3
    :goto_1
    invoke-static {p0, p1}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->createOrientationHelper(Lcom/google/android/material/carousel/CarouselLayoutManager;I)Lcom/google/android/material/carousel/CarouselOrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->orientationHelper:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 1631
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->refreshKeylineState()V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1261
    new-instance p2, Lcom/google/android/material/carousel/CarouselLayoutManager$1;

    .line 1262
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager$1;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/content/Context;)V

    .line 1289
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 1290
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
