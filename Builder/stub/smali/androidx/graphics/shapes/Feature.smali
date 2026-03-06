.class public abstract Landroidx/graphics/shapes/Feature;
.super Ljava/lang/Object;
.source "Features.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/Feature$Corner;,
        Landroidx/graphics/shapes/Feature$Edge;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008 \u0018\u00002\u00020\u0001:\u0002\u000c\rB\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0015\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH \u00a2\u0006\u0002\u0008\u000bR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/graphics/shapes/Feature;",
        "",
        "cubics",
        "",
        "Landroidx/graphics/shapes/Cubic;",
        "(Ljava/util/List;)V",
        "getCubics",
        "()Ljava/util/List;",
        "transformed",
        "f",
        "Landroidx/graphics/shapes/PointTransformer;",
        "transformed$graphics_shapes_release",
        "Corner",
        "Edge",
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
.field private final cubics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Cubic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/graphics/shapes/Cubic;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cubics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/shapes/Feature;->cubics:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCubics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Cubic;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Landroidx/graphics/shapes/Feature;->cubics:Ljava/util/List;

    return-object v0
.end method

.method public abstract transformed$graphics_shapes_release(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Feature;
.end method
