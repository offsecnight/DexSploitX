.class public final synthetic Landroidx/graphics/shapes/AngleMeasurer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/graphics/shapes/FindMinimumFunction;


# instance fields
.field public final synthetic f$0:Landroidx/graphics/shapes/Cubic;

.field public final synthetic f$1:Landroidx/graphics/shapes/AngleMeasurer;

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FF)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/shapes/AngleMeasurer$$ExternalSyntheticLambda0;->f$0:Landroidx/graphics/shapes/Cubic;

    iput-object p2, p0, Landroidx/graphics/shapes/AngleMeasurer$$ExternalSyntheticLambda0;->f$1:Landroidx/graphics/shapes/AngleMeasurer;

    iput p3, p0, Landroidx/graphics/shapes/AngleMeasurer$$ExternalSyntheticLambda0;->f$2:F

    iput p4, p0, Landroidx/graphics/shapes/AngleMeasurer$$ExternalSyntheticLambda0;->f$3:F

    return-void
.end method


# virtual methods
.method public final invoke(F)F
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/graphics/shapes/AngleMeasurer$$ExternalSyntheticLambda0;->f$0:Landroidx/graphics/shapes/Cubic;

    iget-object v1, p0, Landroidx/graphics/shapes/AngleMeasurer$$ExternalSyntheticLambda0;->f$1:Landroidx/graphics/shapes/AngleMeasurer;

    iget v2, p0, Landroidx/graphics/shapes/AngleMeasurer$$ExternalSyntheticLambda0;->f$2:F

    iget v3, p0, Landroidx/graphics/shapes/AngleMeasurer$$ExternalSyntheticLambda0;->f$3:F

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/graphics/shapes/AngleMeasurer;->$r8$lambda$Bzv6ODwqQqmceGWR-zm_cGw1Ksw(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FFF)F

    move-result p1

    return p1
.end method
