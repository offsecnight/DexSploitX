.class final Landroidx/graphics/shapes/RoundedPolygon$normalized$1;
.super Ljava/lang/Object;
.source "RoundedPolygon.kt"

# interfaces
.implements Landroidx/graphics/shapes/PointTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/shapes/RoundedPolygon;->normalized()Landroidx/graphics/shapes/RoundedPolygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/collection/FloatFloatPair;",
        "Landroidx/graphics/shapes/TransformResult;",
        "x",
        "",
        "y"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $offsetX:F

.field final synthetic $offsetY:F

.field final synthetic $side:F


# direct methods
.method constructor <init>(FFF)V
    .locals 0

    iput p1, p0, Landroidx/graphics/shapes/RoundedPolygon$normalized$1;->$offsetX:F

    iput p2, p0, Landroidx/graphics/shapes/RoundedPolygon$normalized$1;->$side:F

    iput p3, p0, Landroidx/graphics/shapes/RoundedPolygon$normalized$1;->$offsetY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform-XgqJiTY(FF)J
    .locals 2

    .line 146
    iget v0, p0, Landroidx/graphics/shapes/RoundedPolygon$normalized$1;->$offsetX:F

    add-float/2addr p1, v0

    iget v0, p0, Landroidx/graphics/shapes/RoundedPolygon$normalized$1;->$side:F

    div-float/2addr p1, v0

    iget v1, p0, Landroidx/graphics/shapes/RoundedPolygon$normalized$1;->$offsetY:F

    add-float/2addr p2, v1

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p1

    return-wide p1
.end method
