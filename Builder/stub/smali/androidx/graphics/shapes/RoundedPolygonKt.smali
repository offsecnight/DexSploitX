.class public final Landroidx/graphics/shapes/RoundedPolygonKt;
.super Ljava/lang/Object;
.source "RoundedPolygon.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoundedPolygon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygonKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 4 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n*L\n1#1,686:1\n1549#2:687\n1620#2,3:688\n67#3:691\n81#3:693\n22#4:692\n22#4:694\n*S KotlinDebug\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygonKt\n*L\n356#1:687\n356#1:688,3\n426#1:691\n425#1:693\n426#1:692\n425#1:694\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a@\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\u0007\u001aL\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\n2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008H\u0007\u001a\u0019\u0010\u000f\u001a\u00060\u0010j\u0002`\u00112\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u00a2\u0006\u0002\u0010\u0012\u001a(\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "RoundedPolygon",
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "source",
        "vertices",
        "",
        "rounding",
        "Landroidx/graphics/shapes/CornerRounding;",
        "perVertexRounding",
        "",
        "centerX",
        "",
        "centerY",
        "numVertices",
        "",
        "radius",
        "calculateCenter",
        "Landroidx/collection/FloatFloatPair;",
        "Landroidx/graphics/shapes/Point;",
        "([F)J",
        "verticesFromNumVerts",
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
.method public static final RoundedPolygon(I)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    const/16 v6, 0x3e

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon(IF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    const/16 v6, 0x3c

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon(IFF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    const/16 v6, 0x38

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon(IFFF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    const/16 v6, 0x30

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon(IFFFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 9

    const-string v0, "rounding"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFF",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    const-string v0, "rounding"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-static {p0, p1, p2, p3}, Landroidx/graphics/shapes/RoundedPolygonKt;->verticesFromNumVerts(IFFF)[F

    move-result-object p0

    .line 275
    invoke-static {p0, p4, p5, p2, p3}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 3

    const-string v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    new-instance v0, Landroidx/graphics/shapes/RoundedPolygon;

    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getFeatures$graphics_shapes_release()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v2

    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/graphics/shapes/RoundedPolygon;-><init>(Ljava/util/List;FF)V

    return-object v0
.end method

.method public static final RoundedPolygon([F)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    const-string v0, "vertices"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    const-string v0, "vertices"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rounding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    const-string v0, "vertices"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rounding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;F)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;F)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    const-string v0, "vertices"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rounding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;FF)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "vertices"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rounding"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    array-length v2, v0

    const/4 v4, 0x6

    if-lt v2, v4, :cond_e

    .line 324
    array-length v2, v0

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    const/4 v5, 0x1

    if-eq v2, v5, :cond_d

    if-eqz v1, :cond_1

    .line 327
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v4

    array-length v6, v0

    if-ne v2, v6, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 329
    const-string v1, "perVertexRounding list should be either null or the same size as the number of vertices (vertices.size / 2)"

    .line 328
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 334
    array-length v6, v0

    div-int/2addr v6, v4

    .line 335
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v6, :cond_4

    if-eqz v1, :cond_3

    .line 337
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/graphics/shapes/CornerRounding;

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v18, v10

    goto :goto_3

    :cond_3
    :goto_2
    move-object/from16 v18, v3

    :goto_3
    add-int v10, v9, v6

    sub-int/2addr v10, v5

    .line 338
    rem-int/2addr v10, v6

    mul-int/2addr v10, v4

    add-int/lit8 v20, v9, 0x1

    .line 339
    rem-int v11, v20, v6

    mul-int/2addr v11, v4

    move v12, v11

    .line 341
    new-instance v11, Landroidx/graphics/shapes/RoundedCorner;

    .line 342
    aget v13, v0, v10

    add-int/2addr v10, v5

    aget v10, v0, v10

    invoke-static {v13, v10}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v13

    mul-int/lit8 v9, v9, 0x2

    .line 343
    aget v10, v0, v9

    add-int/2addr v9, v5

    aget v9, v0, v9

    invoke-static {v10, v9}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v9

    .line 344
    aget v15, v0, v12

    add-int/2addr v12, v5

    aget v12, v0, v12

    invoke-static {v15, v12}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v16

    const/16 v19, 0x0

    move-wide v12, v13

    move-wide v14, v9

    .line 341
    invoke-direct/range {v11 .. v19}, Landroidx/graphics/shapes/RoundedCorner;-><init>(JJJLandroidx/graphics/shapes/CornerRounding;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 340
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v9, v20

    goto :goto_1

    .line 356
    :cond_4
    invoke-static {v8, v6}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 687
    new-instance v3, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v1, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 688
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v1

    check-cast v9, Lkotlin/collections/IntIterator;

    invoke-virtual {v9}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v9

    .line 358
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/graphics/shapes/RoundedCorner;

    invoke-virtual {v10}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedRoundCut()F

    move-result v10

    add-int/lit8 v11, v9, 0x1

    rem-int/2addr v11, v6

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/graphics/shapes/RoundedCorner;

    invoke-virtual {v12}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedRoundCut()F

    move-result v12

    add-float/2addr v10, v12

    .line 360
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/graphics/shapes/RoundedCorner;

    invoke-virtual {v12}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedCut()F

    move-result v12

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/graphics/shapes/RoundedCorner;

    invoke-virtual {v13}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedCut()F

    move-result v13

    add-float/2addr v12, v13

    mul-int/2addr v9, v4

    .line 361
    aget v13, v0, v9

    add-int/2addr v9, v5

    .line 362
    aget v9, v0, v9

    mul-int/2addr v11, v4

    .line 363
    aget v14, v0, v11

    add-int/2addr v11, v5

    .line 364
    aget v11, v0, v11

    sub-float/2addr v13, v14

    sub-float/2addr v9, v11

    .line 365
    invoke-static {v13, v9}, Landroidx/graphics/shapes/Utils;->distance(FF)F

    move-result v9

    cmpl-float v11, v10, v9

    if-lez v11, :cond_5

    div-float/2addr v9, v10

    .line 371
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    goto :goto_5

    :cond_5
    cmpl-float v11, v12, v9

    const/high16 v13, 0x3f800000    # 1.0f

    if-lez v11, :cond_6

    .line 374
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    sub-float/2addr v9, v10

    sub-float/2addr v12, v10

    div-float/2addr v9, v12

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v11, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    goto :goto_5

    .line 377
    :cond_6
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 689
    :goto_5
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 690
    :cond_7
    check-cast v3, Ljava/util/List;

    move v1, v8

    :goto_6
    if-ge v1, v6, :cond_9

    .line 384
    new-instance v9, Landroidx/collection/MutableFloatList;

    invoke-direct {v9, v4}, Landroidx/collection/MutableFloatList;-><init>(I)V

    move v10, v8

    :goto_7
    if-ge v10, v4, :cond_8

    add-int v11, v1, v6

    sub-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 386
    rem-int/2addr v11, v6

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/Pair;

    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    .line 388
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/graphics/shapes/RoundedCorner;

    invoke-virtual {v13}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedRoundCut()F

    move-result v13

    mul-float/2addr v13, v12

    .line 389
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/graphics/shapes/RoundedCorner;

    invoke-virtual {v12}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedCut()F

    move-result v12

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/graphics/shapes/RoundedCorner;

    invoke-virtual {v14}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedRoundCut()F

    move-result v14

    sub-float/2addr v12, v14

    mul-float/2addr v12, v11

    add-float/2addr v13, v12

    .line 387
    invoke-virtual {v9, v13}, Landroidx/collection/MutableFloatList;->add(F)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 393
    :cond_8
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/graphics/shapes/RoundedCorner;

    invoke-virtual {v9, v8}, Landroidx/collection/MutableFloatList;->get(I)F

    move-result v11

    invoke-virtual {v9, v5}, Landroidx/collection/MutableFloatList;->get(I)F

    move-result v9

    invoke-virtual {v10, v11, v9}, Landroidx/graphics/shapes/RoundedCorner;->getCubics(FF)Ljava/util/List;

    move-result-object v9

    .line 392
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 398
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    :goto_8
    if-ge v8, v6, :cond_a

    add-int v3, v8, v6

    sub-int/2addr v3, v5

    .line 404
    rem-int/2addr v3, v6

    add-int/lit8 v9, v8, 0x1

    .line 405
    rem-int v10, v9, v6

    mul-int/lit8 v11, v8, 0x2

    .line 406
    aget v12, v0, v11

    add-int/2addr v11, v5

    aget v11, v0, v11

    invoke-static {v12, v11}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v11

    mul-int/2addr v3, v4

    .line 407
    aget v13, v0, v3

    add-int/2addr v3, v5

    aget v3, v0, v3

    invoke-static {v13, v3}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v13

    mul-int/lit8 v3, v10, 0x2

    .line 408
    aget v15, v0, v3

    add-int/2addr v3, v5

    aget v3, v0, v3

    invoke-static {v15, v3}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v4

    .line 409
    invoke-static {v11, v12, v13, v14}, Landroidx/graphics/shapes/PointKt;->minus-ybeJwSQ(JJ)J

    move-result-wide v13

    invoke-static {v4, v5, v11, v12}, Landroidx/graphics/shapes/PointKt;->minus-ybeJwSQ(JJ)J

    move-result-wide v3

    invoke-static {v13, v14, v3, v4}, Landroidx/graphics/shapes/PointKt;->clockwise-ybeJwSQ(JJ)Z

    move-result v19

    .line 410
    new-instance v13, Landroidx/graphics/shapes/Feature$Corner;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/RoundedCorner;

    invoke-virtual {v3}, Landroidx/graphics/shapes/RoundedCorner;->getCenter-1ufDz9w()J

    move-result-wide v17

    const/16 v20, 0x0

    move-wide v15, v11

    invoke-direct/range {v13 .. v20}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v3, Landroidx/graphics/shapes/Feature$Edge;

    .line 414
    sget-object v4, Landroidx/graphics/shapes/Cubic;->Companion:Landroidx/graphics/shapes/Cubic$Companion;

    .line 415
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v5

    .line 416
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v8}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v8

    .line 417
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v11}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v11

    .line 418
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v10}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v10

    .line 414
    invoke-virtual {v4, v5, v8, v11, v10}, Landroidx/graphics/shapes/Cubic$Companion;->straightLine(FFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v4

    .line 413
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 412
    invoke-direct {v3, v4}, Landroidx/graphics/shapes/Feature$Edge;-><init>(Ljava/util/List;)V

    .line 411
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v9

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_8

    :cond_a
    const/4 v2, 0x1

    cmpg-float v3, p3, v2

    if-nez v3, :cond_b

    goto :goto_9

    :cond_b
    cmpg-float v2, p4, v2

    if-nez v2, :cond_c

    .line 427
    :goto_9
    invoke-static {v0}, Landroidx/graphics/shapes/RoundedPolygonKt;->calculateCenter([F)J

    move-result-wide v2

    goto :goto_a

    .line 429
    :cond_c
    invoke-static/range {p3 .. p4}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v2

    :goto_a
    const/16 v0, 0x20

    shr-long v4, v2, v0

    long-to-int v0, v4

    .line 692
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    .line 694
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 431
    new-instance v3, Landroidx/graphics/shapes/RoundedPolygon;

    invoke-direct {v3, v1, v0, v2}, Landroidx/graphics/shapes/RoundedPolygon;-><init>(Ljava/util/List;FF)V

    return-object v3

    .line 325
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The vertices array should have even size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Polygons must have at least 3 vertices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 1

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x10

    if-eqz p7, :cond_3

    .line 272
    sget-object p4, Landroidx/graphics/shapes/CornerRounding;->Unrounded:Landroidx/graphics/shapes/CornerRounding;

    :cond_3
    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move p2, p0

    move p3, p1

    .line 267
    invoke-static/range {p2 .. p7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic RoundedPolygon$default([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 316
    sget-object p1, Landroidx/graphics/shapes/CornerRounding;->Unrounded:Landroidx/graphics/shapes/CornerRounding;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x8

    const/4 v0, 0x1

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_3

    move p4, v0

    .line 314
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method private static final calculateCenter([F)J
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    .line 448
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 449
    aget v4, p0, v2

    add-float/2addr v0, v4

    add-int/lit8 v2, v2, 0x2

    .line 450
    aget v3, p0, v3

    add-float/2addr v1, v3

    goto :goto_0

    .line 452
    :cond_0
    array-length v2, p0

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v0, v2

    array-length p0, p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final verticesFromNumVerts(IFFF)[F
    .locals 12

    mul-int/lit8 v0, p0, 0x2

    .line 676
    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_0

    .line 680
    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result v3

    int-to-float v4, p0

    div-float/2addr v3, v4

    const/4 v4, 0x2

    int-to-float v5, v4

    mul-float/2addr v3, v5

    int-to-float v5, v1

    mul-float v7, v3, v5

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-wide/16 v8, 0x0

    move v6, p1

    invoke-static/range {v6 .. v11}, Landroidx/graphics/shapes/Utils;->radialToCartesian-L6JJ3z0$default(FFJILjava/lang/Object;)J

    move-result-wide v7

    invoke-static {p2, p3}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/graphics/shapes/PointKt;->plus-ybeJwSQ(JJ)J

    move-result-wide v7

    add-int/lit8 p1, v2, 0x1

    .line 681
    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v3

    aput v3, v0, v2

    add-int/2addr v2, v4

    .line 682
    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v3

    aput v3, v0, p1

    add-int/lit8 v1, v1, 0x1

    move p1, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method
