.class public final Landroidx/graphics/shapes/AngleMeasurer;
.super Ljava/lang/Object;
.source "PolygonMeasure.kt"

# interfaces
.implements Landroidx/graphics/shapes/Measurer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/graphics/shapes/AngleMeasurer;",
        "Landroidx/graphics/shapes/Measurer;",
        "centerX",
        "",
        "centerY",
        "(FF)V",
        "getCenterX",
        "()F",
        "getCenterY",
        "findCubicCutPoint",
        "c",
        "Landroidx/graphics/shapes/Cubic;",
        "m",
        "measureCubic",
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
.field private final centerX:F

.field private final centerY:F


# direct methods
.method public static synthetic $r8$lambda$Bzv6ODwqQqmceGWR-zm_cGw1Ksw(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FFF)F
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/graphics/shapes/AngleMeasurer;->findCubicCutPoint$lambda$1(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FFF)F

    move-result p0

    return p0
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerX:F

    iput p2, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerY:F

    return-void
.end method

.method private static final findCubicCutPoint$lambda$1(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FFF)F
    .locals 2

    const-string v0, "$c"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0, p4}, Landroidx/graphics/shapes/Cubic;->pointOnCurve-OOQOV4g$graphics_shapes_release(F)J

    move-result-wide v0

    .line 346
    invoke-static {v0, v1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result p0

    iget p4, p1, Landroidx/graphics/shapes/AngleMeasurer;->centerX:F

    sub-float/2addr p0, p4

    invoke-static {v0, v1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p4

    iget p1, p1, Landroidx/graphics/shapes/AngleMeasurer;->centerY:F

    sub-float/2addr p4, p1

    invoke-static {p0, p4}, Landroidx/graphics/shapes/Utils;->angle(FF)F

    move-result p0

    sub-float/2addr p0, p2

    .line 347
    invoke-static {}, Landroidx/graphics/shapes/Utils;->getTwoPi()F

    move-result p1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result p0

    sub-float/2addr p0, p3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public findCubicCutPoint(Landroidx/graphics/shapes/Cubic;F)F
    .locals 3

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v0

    iget v1, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v1

    iget v2, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerY:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/graphics/shapes/Utils;->angle(FF)F

    move-result v0

    .line 344
    new-instance v1, Landroidx/graphics/shapes/AngleMeasurer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0, v0, p2}, Landroidx/graphics/shapes/AngleMeasurer$$ExternalSyntheticLambda0;-><init>(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FF)V

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    const v0, 0x3727c5ac    # 1.0E-5f

    invoke-static {p1, p2, v0, v1}, Landroidx/graphics/shapes/Utils;->findMinimum(FFFLandroidx/graphics/shapes/FindMinimumFunction;)F

    move-result p1

    return p1
.end method

.method public final getCenterX()F
    .locals 1

    .line 324
    iget v0, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerX:F

    return v0
.end method

.method public final getCenterY()F
    .locals 1

    .line 324
    iget v0, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerY:F

    return v0
.end method

.method public measureCubic(Landroidx/graphics/shapes/Cubic;)F
    .locals 3

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v0

    iget v1, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v1

    iget v2, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerY:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/graphics/shapes/Utils;->angle(FF)F

    move-result v0

    .line 333
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v1

    iget v2, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerX:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result p1

    iget v2, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerY:F

    sub-float/2addr p1, v2

    invoke-static {v1, p1}, Landroidx/graphics/shapes/Utils;->angle(FF)F

    move-result p1

    sub-float/2addr v0, p1

    .line 334
    invoke-static {}, Landroidx/graphics/shapes/Utils;->getTwoPi()F

    move-result p1

    .line 331
    invoke-static {v0, p1}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    move-result p1

    .line 338
    invoke-static {}, Landroidx/graphics/shapes/Utils;->getTwoPi()F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method
