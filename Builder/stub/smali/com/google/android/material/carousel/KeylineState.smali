.class public final Lcom/google/android/material/carousel/KeylineState;
.super Ljava/lang/Object;
.source "KeylineState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/KeylineState$Keyline;,
        Lcom/google/android/material/carousel/KeylineState$Builder;
    }
.end annotation


# instance fields
.field private final carouselSize:I

.field private final firstFocalKeylineIndex:I

.field private final itemSize:F

.field private final keylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation
.end field

.field private final lastFocalKeylineIndex:I

.field private totalVisibleFocalItems:I


# direct methods
.method private constructor <init>(FLjava/util/List;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;III)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    .line 72
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 73
    iput p3, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    .line 74
    iput p4, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    :goto_0
    if-gt p3, p4, :cond_1

    .line 76
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget p1, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 77
    iget p1, p0, Lcom/google/android/material/carousel/KeylineState;->totalVisibleFocalItems:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState;->totalVisibleFocalItems:I

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iput p5, p0, Lcom/google/android/material/carousel/KeylineState;->carouselSize:I

    return-void
.end method

.method synthetic constructor <init>(FLjava/util/List;IIILcom/google/android/material/carousel/KeylineState$1;)V
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;III)V

    return-void
.end method

.method static lerp(Lcom/google/android/material/carousel/KeylineState;Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;
    .locals 10

    .line 186
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 197
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 198
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 199
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-static {v3, v4, p2}, Lcom/google/android/material/carousel/KeylineState$Keyline;->lerp(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;F)Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v1

    .line 203
    invoke-static {v0, v1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v7

    .line 207
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result p1

    .line 206
    invoke-static {v0, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v8

    .line 209
    new-instance v4, Lcom/google/android/material/carousel/KeylineState;

    .line 210
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v5

    iget v9, p0, Lcom/google/android/material/carousel/KeylineState;->carouselSize:I

    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;III)V

    return-object v4

    .line 193
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keylines being linearly interpolated must have the same number of keylines."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keylines being linearly interpolated must have the same item size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static reverse(Lcom/google/android/material/carousel/KeylineState;I)Lcom/google/android/material/carousel/KeylineState;
    .locals 10

    .line 228
    new-instance v0, Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 229
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    int-to-float p1, p1

    .line 235
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    sub-float/2addr p1, v1

    .line 236
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    sub-float/2addr p1, v1

    .line 237
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    move v8, v1

    :goto_0
    if-ltz v8, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 239
    iget v1, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    div-float/2addr v1, v6

    add-float/2addr v1, p1

    .line 241
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v2

    if-lt v8, v2, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v2

    if-gt v8, v2, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move v4, v2

    .line 243
    :goto_1
    iget v2, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v3, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget-boolean v5, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 244
    iget v1, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    add-float/2addr p1, v1

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getCarouselSize()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->carouselSize:I

    return v0
.end method

.method getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iget v1, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object v0
.end method

.method getFirstFocalKeylineIndex()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    return v0
.end method

.method getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object v0
.end method

.method getFirstNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 3

    const/4 v0, 0x0

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 142
    iget-boolean v2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getFocalKeylines()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iget v1, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    iget v2, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getItemSize()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    return v0
.end method

.method getKeylines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    return-object v0
.end method

.method getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iget v1, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object v0
.end method

.method getLastFocalKeylineIndex()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    return v0
.end method

.method getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object v0
.end method

.method getLastNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 153
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 154
    iget-boolean v2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getNumberOfNonAnchorKeylines()I
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 165
    iget-boolean v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    return v0
.end method

.method getTotalVisibleFocalItems()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->totalVisibleFocalItems:I

    return v0
.end method
