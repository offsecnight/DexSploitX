.class public final Landroidx/graphics/shapes/FloatMappingKt;
.super Ljava/lang/Object;
.source "FloatMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FloatList.kt\nandroidx/collection/FloatList\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1#2:100\n75#3:101\n190#3,3:104\n253#3,4:107\n193#3,2:111\n258#3:113\n195#3:114\n223#4,2:102\n1774#4,4:115\n*S KotlinDebug\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n*L\n42#1:101\n93#1:104,3\n93#1:107,4\n93#1:111,2\n93#1:113\n93#1:114\n42#1:102,2\n96#1:115,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001H\u0000\u001a\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "linearMap",
        "",
        "xValues",
        "Landroidx/collection/FloatList;",
        "yValues",
        "x",
        "progressInRange",
        "",
        "progress",
        "progressFrom",
        "progressTo",
        "validateProgress",
        "",
        "p",
        "graphics-shapes_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final linearMap(Landroidx/collection/FloatList;Landroidx/collection/FloatList;F)F
    .locals 6

    const-string v0, "xValues"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    .line 101
    iget v2, p0, Landroidx/collection/FloatList;->_size:I

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 102
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 42
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->get(I)F

    move-result v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0}, Landroidx/collection/FloatList;->getSize()I

    move-result v5

    rem-int v5, v4, v5

    invoke-virtual {p0, v5}, Landroidx/collection/FloatList;->get(I)F

    move-result v5

    invoke-static {p2, v3, v5}, Landroidx/graphics/shapes/FloatMappingKt;->progressInRange(FFF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {p0}, Landroidx/collection/FloatList;->getSize()I

    move-result v1

    rem-int/2addr v4, v1

    .line 44
    invoke-virtual {p0, v4}, Landroidx/collection/FloatList;->get(I)F

    move-result v1

    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->get(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1, v0}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result v1

    .line 45
    invoke-virtual {p1, v4}, Landroidx/collection/FloatList;->get(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroidx/collection/FloatList;->get(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3, v0}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->get(I)F

    move-result p0

    sub-float/2addr p2, p0

    invoke-static {p2, v0}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result p0

    div-float/2addr p0, v1

    .line 50
    :goto_0
    invoke-virtual {p1, v2}, Landroidx/collection/FloatList;->get(I)F

    move-result p1

    mul-float/2addr v3, p0

    add-float/2addr p1, v3

    invoke-static {p1, v0}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result p0

    return p0

    .line 103
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid progress: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final progressInRange(FFF)Z
    .locals 3

    cmpl-float v0, p2, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    cmpg-float p1, p1, p0

    if-gtz p1, :cond_0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    cmpl-float p1, p0, p1

    if-gez p1, :cond_3

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public static final validateProgress(Landroidx/collection/FloatList;)V
    .locals 10

    const-string v0, "p"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 93
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 108
    iget-object v2, p0, Landroidx/collection/FloatList;->content:[F

    .line 109
    iget v3, p0, Landroidx/collection/FloatList;->_size:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 110
    aget v6, v2, v5

    .line 111
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    move v1, v4

    .line 93
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 96
    invoke-virtual {p0}, Landroidx/collection/FloatList;->getSize()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 115
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_4

    .line 117
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v4

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 96
    invoke-virtual {p0, v3}, Landroidx/collection/FloatList;->get(I)F

    move-result v5

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Landroidx/collection/FloatList;->get(I)F

    move-result v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_4

    move v3, v0

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_3

    .line 117
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_2

    :cond_5
    :goto_4
    if-gt v2, v0, :cond_6

    goto :goto_5

    :cond_6
    move v0, v4

    :goto_5
    if-eqz v0, :cond_7

    return-void

    .line 97
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatMapping - Progress wraps more than once: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Landroidx/collection/FloatList;->joinToString$default(Landroidx/collection/FloatList;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v1, p0

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "FloatMapping - Progress outside of range: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/collection/FloatList;->joinToString$default(Landroidx/collection/FloatList;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
