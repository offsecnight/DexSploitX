.class public final Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;
.super Ljava/lang/Object;
.source "PolygonMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/MeasuredPolygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MeasuredCubic"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPolygonMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,353:1\n1#2:354\n108#3,4:355\n*S KotlinDebug\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic\n*L\n128#1:355,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0080\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\"\u0010\u0010\u001a\u0016\u0012\u0008\u0012\u00060\u0000R\u00020\u0012\u0012\u0008\u0012\u00060\u0000R\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0005J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J!\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u0018R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;",
        "",
        "cubic",
        "Landroidx/graphics/shapes/Cubic;",
        "startOutlineProgress",
        "",
        "endOutlineProgress",
        "(Landroidx/graphics/shapes/MeasuredPolygon;Landroidx/graphics/shapes/Cubic;FF)V",
        "getCubic",
        "()Landroidx/graphics/shapes/Cubic;",
        "<set-?>",
        "getEndOutlineProgress",
        "()F",
        "measuredSize",
        "getMeasuredSize",
        "getStartOutlineProgress",
        "cutAtProgress",
        "Lkotlin/Pair;",
        "Landroidx/graphics/shapes/MeasuredPolygon;",
        "cutOutlineProgress",
        "toString",
        "",
        "updateProgressRange",
        "",
        "updateProgressRange$graphics_shapes_release",
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


# instance fields
.field private final cubic:Landroidx/graphics/shapes/Cubic;

.field private endOutlineProgress:F

.field private final measuredSize:F

.field private startOutlineProgress:F

.field final synthetic this$0:Landroidx/graphics/shapes/MeasuredPolygon;


# direct methods
.method public constructor <init>(Landroidx/graphics/shapes/MeasuredPolygon;Landroidx/graphics/shapes/Cubic;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/Cubic;",
            "FF)V"
        }
    .end annotation

    const-string v0, "cubic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->this$0:Landroidx/graphics/shapes/MeasuredPolygon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->cubic:Landroidx/graphics/shapes/Cubic;

    cmpl-float v0, p4, p3

    if-ltz v0, :cond_0

    .line 92
    invoke-static {p1}, Landroidx/graphics/shapes/MeasuredPolygon;->access$getMeasurer$p(Landroidx/graphics/shapes/MeasuredPolygon;)Landroidx/graphics/shapes/Measurer;

    move-result-object p1

    invoke-interface {p1, p2}, Landroidx/graphics/shapes/Measurer;->measureCubic(Landroidx/graphics/shapes/Cubic;)F

    move-result p1

    iput p1, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->measuredSize:F

    .line 94
    iput p3, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->startOutlineProgress:F

    .line 97
    iput p4, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->endOutlineProgress:F

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endOutlineProgress is expected to be equal or greater than startOutlineProgress"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic updateProgressRange$graphics_shapes_release$default(Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;FFILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 101
    iget p1, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->startOutlineProgress:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 102
    iget p2, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->endOutlineProgress:F

    .line 100
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->updateProgressRange$graphics_shapes_release(FF)V

    return-void
.end method


# virtual methods
.method public final cutAtProgress(F)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lkotlin/Pair<",
            "Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;",
            "Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;",
            ">;"
        }
    .end annotation

    .line 117
    iget v0, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->startOutlineProgress:F

    iget v1, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->endOutlineProgress:F

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    .line 118
    iget v0, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->endOutlineProgress:F

    iget v1, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->startOutlineProgress:F

    sub-float/2addr v0, v1

    sub-float v1, p1, v1

    div-float/2addr v1, v0

    .line 125
    iget-object v0, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->this$0:Landroidx/graphics/shapes/MeasuredPolygon;

    invoke-static {v0}, Landroidx/graphics/shapes/MeasuredPolygon;->access$getMeasurer$p(Landroidx/graphics/shapes/MeasuredPolygon;)Landroidx/graphics/shapes/Measurer;

    move-result-object v0

    iget-object v2, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->cubic:Landroidx/graphics/shapes/Cubic;

    iget v3, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->measuredSize:F

    mul-float/2addr v1, v3

    invoke-interface {v0, v2, v1}, Landroidx/graphics/shapes/Measurer;->findCubicCutPoint(Landroidx/graphics/shapes/Cubic;F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 128
    invoke-static {}, Landroidx/graphics/shapes/PolygonMeasureKt;->access$getLOG_TAG$p()Ljava/lang/String;

    .line 135
    iget-object v1, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->cubic:Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v1, v0}, Landroidx/graphics/shapes/Cubic;->split(F)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/graphics/shapes/Cubic;

    .line 136
    new-instance v2, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    iget-object v3, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->this$0:Landroidx/graphics/shapes/MeasuredPolygon;

    iget v4, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->startOutlineProgress:F

    invoke-direct {v2, v3, v1, v4, p1}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;-><init>(Landroidx/graphics/shapes/MeasuredPolygon;Landroidx/graphics/shapes/Cubic;FF)V

    .line 137
    new-instance v1, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    iget-object v3, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->this$0:Landroidx/graphics/shapes/MeasuredPolygon;

    iget v4, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->endOutlineProgress:F

    invoke-direct {v1, v3, v0, p1, v4}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;-><init>(Landroidx/graphics/shapes/MeasuredPolygon;Landroidx/graphics/shapes/Cubic;FF)V

    .line 136
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cubic cut point is expected to be between 0 and 1"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getCubic()Landroidx/graphics/shapes/Cubic;
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->cubic:Landroidx/graphics/shapes/Cubic;

    return-object v0
.end method

.method public final getEndOutlineProgress()F
    .locals 1

    .line 97
    iget v0, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->endOutlineProgress:F

    return v0
.end method

.method public final getMeasuredSize()F
    .locals 1

    .line 92
    iget v0, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->measuredSize:F

    return v0
.end method

.method public final getStartOutlineProgress()F
    .locals 1

    .line 94
    iget v0, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->startOutlineProgress:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MeasuredCubic(outlineProgress=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    iget v1, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->startOutlineProgress:F

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    const-string v1, " .. "

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    iget v1, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->endOutlineProgress:F

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    const-string v1, "], size="

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    iget v1, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->measuredSize:F

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    const-string v1, ", cubic="

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    iget-object v1, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->cubic:Landroidx/graphics/shapes/Cubic;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateProgressRange$graphics_shapes_release(FF)V
    .locals 1

    cmpl-float v0, p2, p1

    if-ltz v0, :cond_0

    .line 107
    iput p1, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->startOutlineProgress:F

    .line 108
    iput p2, p0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->endOutlineProgress:F

    return-void

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endOutlineProgress is expected to be equal or greater than startOutlineProgress"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
