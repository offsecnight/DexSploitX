.class public final Landroidx/graphics/shapes/CornerRounding;
.super Ljava/lang/Object;
.source "CornerRounding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/CornerRounding$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0019\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/graphics/shapes/CornerRounding;",
        "",
        "radius",
        "",
        "smoothing",
        "(FF)V",
        "getRadius",
        "()F",
        "getSmoothing",
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
.field public static final Companion:Landroidx/graphics/shapes/CornerRounding$Companion;

.field public static final Unrounded:Landroidx/graphics/shapes/CornerRounding;


# instance fields
.field private final radius:F

.field private final smoothing:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/graphics/shapes/CornerRounding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/shapes/CornerRounding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/CornerRounding;->Companion:Landroidx/graphics/shapes/CornerRounding$Companion;

    .line 59
    new-instance v0, Landroidx/graphics/shapes/CornerRounding;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v2, v2, v3, v1}, Landroidx/graphics/shapes/CornerRounding;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/CornerRounding;->Unrounded:Landroidx/graphics/shapes/CornerRounding;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/graphics/shapes/CornerRounding;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroidx/graphics/shapes/CornerRounding;->radius:F

    .line 54
    iput p2, p0, Landroidx/graphics/shapes/CornerRounding;->smoothing:F

    return-void
.end method

.method public synthetic constructor <init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 52
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public final getRadius()F
    .locals 1

    .line 53
    iget v0, p0, Landroidx/graphics/shapes/CornerRounding;->radius:F

    return v0
.end method

.method public final getSmoothing()F
    .locals 1

    .line 54
    iget v0, p0, Landroidx/graphics/shapes/CornerRounding;->smoothing:F

    return v0
.end method
