.class public final Landroidx/graphics/shapes/Morph$Companion;
.super Ljava/lang/Object;
.source "Morph.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/Morph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMorph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph$Companion\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,342:1\n108#2,4:343\n108#2,4:347\n108#2,4:351\n108#2,4:355\n108#2,4:359\n*S KotlinDebug\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph$Companion\n*L\n239#1:343,4\n284#1:347,4\n290#1:351,4\n297#1:355,4\n304#1:359,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J/\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0001\u00a2\u0006\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/graphics/shapes/Morph$Companion;",
        "",
        "()V",
        "match",
        "",
        "Lkotlin/Pair;",
        "Landroidx/graphics/shapes/Cubic;",
        "p1",
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "p2",
        "match$graphics_shapes_release",
        "graphics-shapes_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/shapes/Morph$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final match$graphics_shapes_release(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/RoundedPolygon;",
            "Landroidx/graphics/shapes/RoundedPolygon;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/graphics/shapes/Cubic;",
            "Landroidx/graphics/shapes/Cubic;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "p1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "p2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    sget-object v2, Landroidx/graphics/shapes/MeasuredPolygon;->Companion:Landroidx/graphics/shapes/MeasuredPolygon$Companion;

    new-instance v3, Landroidx/graphics/shapes/AngleMeasurer;

    invoke-virtual {v0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v4

    invoke-virtual {v0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/AngleMeasurer;-><init>(FF)V

    check-cast v3, Landroidx/graphics/shapes/Measurer;

    invoke-virtual {v2, v3, v0}, Landroidx/graphics/shapes/MeasuredPolygon$Companion;->measurePolygon$graphics_shapes_release(Landroidx/graphics/shapes/Measurer;Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/MeasuredPolygon;

    move-result-object v0

    .line 223
    sget-object v2, Landroidx/graphics/shapes/MeasuredPolygon;->Companion:Landroidx/graphics/shapes/MeasuredPolygon$Companion;

    new-instance v3, Landroidx/graphics/shapes/AngleMeasurer;

    invoke-virtual {v1}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v4

    invoke-virtual {v1}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/AngleMeasurer;-><init>(FF)V

    check-cast v3, Landroidx/graphics/shapes/Measurer;

    invoke-virtual {v2, v3, v1}, Landroidx/graphics/shapes/MeasuredPolygon$Companion;->measurePolygon$graphics_shapes_release(Landroidx/graphics/shapes/Measurer;Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/MeasuredPolygon;

    move-result-object v1

    .line 228
    invoke-virtual {v0}, Landroidx/graphics/shapes/MeasuredPolygon;->getFeatures()Ljava/util/List;

    move-result-object v2

    .line 229
    invoke-virtual {v1}, Landroidx/graphics/shapes/MeasuredPolygon;->getFeatures()Ljava/util/List;

    move-result-object v3

    .line 235
    invoke-static {v2, v3}, Landroidx/graphics/shapes/FeatureMappingKt;->featureMapper(Ljava/util/List;Ljava/util/List;)Landroidx/graphics/shapes/DoubleMapper;

    move-result-object v2

    const/4 v3, 0x0

    .line 238
    invoke-virtual {v2, v3}, Landroidx/graphics/shapes/DoubleMapper;->map(F)F

    move-result v3

    .line 239
    invoke-static {}, Landroidx/graphics/shapes/MorphKt;->access$getLOG_TAG$p()Ljava/lang/String;

    .line 249
    invoke-virtual {v1, v3}, Landroidx/graphics/shapes/MeasuredPolygon;->cutAndShift(F)Landroidx/graphics/shapes/MeasuredPolygon;

    move-result-object v1

    .line 265
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 270
    move-object v5, v0

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 271
    move-object v8, v1

    check-cast v8, Ljava/util/List;

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    const/4 v9, 0x1

    move v10, v9

    :goto_0
    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    .line 276
    invoke-virtual {v0}, Landroidx/graphics/shapes/MeasuredPolygon;->size()I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    if-ne v9, v11, :cond_0

    move v11, v12

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getEndOutlineProgress()F

    move-result v11

    .line 278
    :goto_1
    invoke-virtual {v1}, Landroidx/graphics/shapes/MeasuredPolygon;->size()I

    move-result v13

    if-ne v10, v13, :cond_1

    move v13, v12

    goto :goto_2

    .line 281
    :cond_1
    invoke-virtual {v6}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getEndOutlineProgress()F

    move-result v13

    add-float/2addr v13, v3

    invoke-static {v13, v12}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result v13

    .line 280
    invoke-virtual {v2, v13}, Landroidx/graphics/shapes/DoubleMapper;->mapBack(F)F

    move-result v13

    .line 283
    :goto_2
    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 284
    invoke-static {}, Landroidx/graphics/shapes/MorphKt;->access$getLOG_TAG$p()Ljava/lang/String;

    const v15, 0x358637bd    # 1.0E-6f

    add-float/2addr v15, v14

    cmpl-float v11, v11, v15

    if-lez v11, :cond_2

    .line 290
    invoke-static {}, Landroidx/graphics/shapes/MorphKt;->access$getLOG_TAG$p()Ljava/lang/String;

    .line 291
    invoke-virtual {v7, v14}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->cutAtProgress(F)Lkotlin/Pair;

    move-result-object v7

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v9, 0x1

    .line 293
    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    move v9, v11

    .line 289
    :goto_3
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 288
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    cmpl-float v13, v13, v15

    if-lez v13, :cond_3

    .line 297
    invoke-static {}, Landroidx/graphics/shapes/MorphKt;->access$getLOG_TAG$p()Ljava/lang/String;

    .line 299
    invoke-virtual {v2, v14}, Landroidx/graphics/shapes/DoubleMapper;->map(F)F

    move-result v13

    sub-float/2addr v13, v3

    invoke-static {v13, v12}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result v12

    .line 298
    invoke-virtual {v6, v12}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->cutAtProgress(F)Lkotlin/Pair;

    move-result-object v6

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v10, 0x1

    .line 302
    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    move v10, v12

    .line 296
    :goto_4
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 295
    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 304
    invoke-static {}, Landroidx/graphics/shapes/MorphKt;->access$getLOG_TAG$p()Ljava/lang/String;

    .line 305
    invoke-virtual {v11}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getCubic()Landroidx/graphics/shapes/Cubic;

    move-result-object v11

    invoke-virtual {v12}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->getCubic()Landroidx/graphics/shapes/Cubic;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    if-nez v7, :cond_5

    if-nez v6, :cond_5

    return-object v4

    .line 309
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected both Polygon\'s Cubic to be fully matched"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
