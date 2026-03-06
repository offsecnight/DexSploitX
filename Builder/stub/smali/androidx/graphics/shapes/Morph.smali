.class public final Landroidx/graphics/shapes/Morph;
.super Ljava/lang/Object;
.source "Morph.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/Morph$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMorph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph\n*L\n1#1,342:1\n173#1,10:343\n*S KotlinDebug\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph\n*L\n-1#1:343,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\u0010\u001a\u00020\u0011J\u001c\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013J2\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00190\u001dH\u0087\u0008\u00f8\u0001\u0000R \u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00080\u00078@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/graphics/shapes/Morph;",
        "",
        "start",
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "end",
        "(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)V",
        "_morphMatch",
        "",
        "Lkotlin/Pair;",
        "Landroidx/graphics/shapes/Cubic;",
        "morphMatch",
        "getMorphMatch$annotations",
        "()V",
        "getMorphMatch",
        "()Ljava/util/List;",
        "asCubics",
        "progress",
        "",
        "calculateBounds",
        "",
        "bounds",
        "approximate",
        "",
        "calculateMaxBounds",
        "forEachCubic",
        "",
        "mutableCubic",
        "Landroidx/graphics/shapes/MutableCubic;",
        "callback",
        "Lkotlin/Function1;",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/graphics/shapes/Morph$Companion;


# instance fields
.field private final _morphMatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/graphics/shapes/Cubic;",
            "Landroidx/graphics/shapes/Cubic;",
            ">;>;"
        }
    .end annotation
.end field

.field private final end:Landroidx/graphics/shapes/RoundedPolygon;

.field private final start:Landroidx/graphics/shapes/RoundedPolygon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/shapes/Morph$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/shapes/Morph$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/Morph;->Companion:Landroidx/graphics/shapes/Morph$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)V
    .locals 1

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/shapes/Morph;->start:Landroidx/graphics/shapes/RoundedPolygon;

    iput-object p2, p0, Landroidx/graphics/shapes/Morph;->end:Landroidx/graphics/shapes/RoundedPolygon;

    .line 49
    sget-object v0, Landroidx/graphics/shapes/Morph;->Companion:Landroidx/graphics/shapes/Morph$Companion;

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/shapes/Morph$Companion;->match$graphics_shapes_release(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    return-void
.end method

.method public static synthetic calculateBounds$default(Landroidx/graphics/shapes/Morph;[FZILjava/lang/Object;)[F
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x4

    .line 64
    new-array p1, p1, [F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 63
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/shapes/Morph;->calculateBounds([FZ)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic calculateMaxBounds$default(Landroidx/graphics/shapes/Morph;[FILjava/lang/Object;)[F
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 92
    new-array p1, p1, [F

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/Morph;->calculateMaxBounds([F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic forEachCubic$default(Landroidx/graphics/shapes/Morph;FLandroidx/graphics/shapes/MutableCubic;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 2

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 175
    new-instance p2, Landroidx/graphics/shapes/MutableCubic;

    invoke-direct {p2}, Landroidx/graphics/shapes/MutableCubic;-><init>()V

    .line 173
    :cond_0
    const-string p4, "mutableCubic"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "callback"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_1

    .line 179
    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p2, v0, v1, p1}, Landroidx/graphics/shapes/MutableCubic;->interpolate(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/Cubic;F)V

    .line 180
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic getMorphMatch$annotations()V
    .locals 0

    return-void
.end method

.method public static final match$graphics_shapes_release(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)Ljava/util/List;
    .locals 1
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

    sget-object v0, Landroidx/graphics/shapes/Morph;->Companion:Landroidx/graphics/shapes/Morph$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/graphics/shapes/Morph$Companion;->match$graphics_shapes_release(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asCubics(F)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Cubic;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 119
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v1

    .line 125
    iget-object v2, v0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v2, :cond_3

    const/16 v7, 0x8

    .line 128
    new-array v8, v7, [F

    move v9, v4

    :goto_1
    if-ge v9, v7, :cond_0

    .line 130
    iget-object v10, v0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/Pair;

    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v10}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes_release()[F

    move-result-object v10

    aget v10, v10, v9

    .line 131
    iget-object v11, v0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/Pair;

    invoke-virtual {v11}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v11}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes_release()[F

    move-result-object v11

    aget v11, v11, v9

    move/from16 v12, p1

    .line 129
    invoke-static {v10, v11, v12}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    move/from16 v12, p1

    .line 127
    new-instance v7, Landroidx/graphics/shapes/Cubic;

    invoke-direct {v7, v8}, Landroidx/graphics/shapes/Cubic;-><init>([F)V

    if-nez v5, :cond_1

    move-object v5, v7

    :cond_1
    if-eqz v3, :cond_2

    .line 137
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    move-object v3, v7

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 143
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v8

    .line 144
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v9

    .line 145
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v10

    .line 146
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v11

    .line 147
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v12

    .line 148
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v13

    .line 149
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v14

    .line 150
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v15

    .line 142
    invoke-static/range {v8 .. v15}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v2

    .line 141
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final calculateBounds()[F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Landroidx/graphics/shapes/Morph;->calculateBounds$default(Landroidx/graphics/shapes/Morph;[FZILjava/lang/Object;)[F

    move-result-object v0

    return-object v0
.end method

.method public final calculateBounds([F)[F
    .locals 3

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Landroidx/graphics/shapes/Morph;->calculateBounds$default(Landroidx/graphics/shapes/Morph;[FZILjava/lang/Object;)[F

    move-result-object p1

    return-object p1
.end method

.method public final calculateBounds([FZ)[F
    .locals 9

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Landroidx/graphics/shapes/Morph;->start:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds([FZ)[F

    const/4 v0, 0x0

    .line 68
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 69
    aget v3, p1, v2

    const/4 v4, 0x2

    .line 70
    aget v5, p1, v4

    const/4 v6, 0x3

    .line 71
    aget v7, p1, v6

    .line 72
    iget-object v8, p0, Landroidx/graphics/shapes/Morph;->end:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-virtual {v8, p1, p2}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds([FZ)[F

    .line 73
    aget p2, p1, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    aput p2, p1, v0

    .line 74
    aget p2, p1, v2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    aput p2, p1, v2

    .line 75
    aget p2, p1, v4

    invoke-static {v5, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, p1, v4

    .line 76
    aget p2, p1, v6

    invoke-static {v7, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, p1, v6

    return-object p1
.end method

.method public final calculateMaxBounds([F)[F
    .locals 9

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroidx/graphics/shapes/Morph;->start:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-virtual {v0, p1}, Landroidx/graphics/shapes/RoundedPolygon;->calculateMaxBounds([F)[F

    const/4 v0, 0x0

    .line 94
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 95
    aget v3, p1, v2

    const/4 v4, 0x2

    .line 96
    aget v5, p1, v4

    const/4 v6, 0x3

    .line 97
    aget v7, p1, v6

    .line 98
    iget-object v8, p0, Landroidx/graphics/shapes/Morph;->end:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-virtual {v8, p1}, Landroidx/graphics/shapes/RoundedPolygon;->calculateMaxBounds([F)[F

    .line 99
    aget v8, p1, v0

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p1, v0

    .line 100
    aget v0, p1, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, p1, v2

    .line 101
    aget v0, p1, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, v4

    .line 102
    aget v0, p1, v6

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, v6

    return-object p1
.end method

.method public final forEachCubic(FLandroidx/graphics/shapes/MutableCubic;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/graphics/shapes/MutableCubic;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/graphics/shapes/MutableCubic;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mutableCubic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 179
    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p2, v2, v3, p1}, Landroidx/graphics/shapes/MutableCubic;->interpolate(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/Cubic;F)V

    .line 180
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final forEachCubic(FLkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/graphics/shapes/MutableCubic;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    new-instance v0, Landroidx/graphics/shapes/MutableCubic;

    invoke-direct {v0}, Landroidx/graphics/shapes/MutableCubic;-><init>()V

    .line 348
    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 349
    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v0, v3, v4, p1}, Landroidx/graphics/shapes/MutableCubic;->interpolate(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/Cubic;F)V

    .line 350
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getMorphMatch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/graphics/shapes/Cubic;",
            "Landroidx/graphics/shapes/Cubic;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    return-object v0
.end method
