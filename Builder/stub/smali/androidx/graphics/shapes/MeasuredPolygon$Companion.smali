.class public final Landroidx/graphics/shapes/MeasuredPolygon$Companion;
.super Ljava/lang/Object;
.source "PolygonMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/MeasuredPolygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPolygonMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,353:1\n2949#2:354\n2847#2,3:355\n2850#2,6:359\n1#3:358\n108#4,4:365\n*S KotlinDebug\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$Companion\n*L\n259#1:354\n259#1:355,3\n259#1:359,6\n259#1:358\n275#1:365,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/graphics/shapes/MeasuredPolygon$Companion;",
        "",
        "()V",
        "measurePolygon",
        "Landroidx/graphics/shapes/MeasuredPolygon;",
        "measurer",
        "Landroidx/graphics/shapes/Measurer;",
        "polygon",
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "measurePolygon$graphics_shapes_release",
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

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/shapes/MeasuredPolygon$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final measurePolygon$graphics_shapes_release(Landroidx/graphics/shapes/Measurer;Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/MeasuredPolygon;
    .locals 10

    const-string v0, "measurer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "polygon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 247
    invoke-virtual {p2}, Landroidx/graphics/shapes/RoundedPolygon;->getFeatures$graphics_shapes_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v1, :cond_2

    .line 248
    invoke-virtual {p2}, Landroidx/graphics/shapes/RoundedPolygon;->getFeatures$graphics_shapes_release()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/graphics/shapes/Feature;

    .line 249
    invoke-virtual {v6}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    .line 250
    instance-of v9, v6, Landroidx/graphics/shapes/Feature$Corner;

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    div-int/2addr v9, v5

    if-ne v8, v9, :cond_0

    .line 251
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    invoke-virtual {v6}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_2
    move-object p2, v4

    check-cast p2, Ljava/lang/Iterable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v6, 0x9

    .line 355
    invoke-static {p2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    if-nez v6, :cond_3

    .line 356
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_3

    .line 357
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 361
    check-cast v6, Landroidx/graphics/shapes/Cubic;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 261
    invoke-interface {p1, v6}, Landroidx/graphics/shapes/Measurer;->measureCubic(Landroidx/graphics/shapes/Cubic;)F

    move-result v6

    cmpl-float v8, v6, v1

    if-ltz v8, :cond_4

    .line 265
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-float/2addr v3, v6

    .line 260
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 362
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 262
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Measured cubic is expected to be greater or equal to zero"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_5
    move-object p2, v7

    check-cast p2, Ljava/util/List;

    .line 267
    :goto_3
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 270
    new-instance v3, Landroidx/collection/MutableFloatList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 271
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    move v7, v2

    :goto_4
    if-ge v7, v6, :cond_6

    .line 272
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    div-float/2addr v8, v1

    invoke-virtual {v3, v8}, Landroidx/collection/MutableFloatList;->add(F)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 275
    :cond_6
    invoke-static {}, Landroidx/graphics/shapes/PolygonMeasureKt;->access$getLOG_TAG$p()Ljava/lang/String;

    .line 277
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object p2

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_5
    if-ge v2, v1, :cond_7

    .line 279
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 281
    new-instance v7, Landroidx/graphics/shapes/ProgressableFeature;

    .line 282
    invoke-virtual {v3, v6}, Landroidx/collection/MutableFloatList;->get(I)F

    move-result v8

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Landroidx/collection/MutableFloatList;->get(I)F

    move-result v6

    add-float/2addr v8, v6

    int-to-float v6, v5

    div-float/2addr v8, v6

    .line 283
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/graphics/shapes/Feature;

    .line 281
    invoke-direct {v7, v8, v6}, Landroidx/graphics/shapes/ProgressableFeature;-><init>(FLandroidx/graphics/shapes/Feature;)V

    .line 280
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 277
    :cond_7
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 289
    new-instance v1, Landroidx/graphics/shapes/MeasuredPolygon;

    move-object v5, v3

    check-cast v5, Landroidx/collection/FloatList;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/graphics/shapes/MeasuredPolygon;-><init>(Landroidx/graphics/shapes/Measurer;Ljava/util/List;Ljava/util/List;Landroidx/collection/FloatList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
