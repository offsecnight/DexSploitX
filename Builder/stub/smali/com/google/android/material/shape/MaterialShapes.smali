.class public final Lcom/google/android/material/shape/MaterialShapes;
.super Ljava/lang/Object;
.source "MaterialShapes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;
    }
.end annotation


# static fields
.field public static final ARCH:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final ARROW:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final BOOM:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final BUN:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final BURST:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final CIRCLE:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final CLAM_SHELL:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final CLOVER_4:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final CLOVER_8:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final COOKIE_12:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final COOKIE_4:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final COOKIE_6:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final COOKIE_7:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final COOKIE_9:Landroidx/graphics/shapes/RoundedPolygon;

.field private static final CORNER_ROUND_100:Landroidx/graphics/shapes/CornerRounding;

.field private static final CORNER_ROUND_15:Landroidx/graphics/shapes/CornerRounding;

.field private static final CORNER_ROUND_20:Landroidx/graphics/shapes/CornerRounding;

.field private static final CORNER_ROUND_30:Landroidx/graphics/shapes/CornerRounding;

.field private static final CORNER_ROUND_50:Landroidx/graphics/shapes/CornerRounding;

.field public static final DIAMOND:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final FAN:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final FLOWER:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final GEM:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final GHOSTISH:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final HEART:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final OVAL:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final PENTAGON:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final PILL:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final PIXEL_CIRCLE:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final PIXEL_TRIANGLE:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final PUFFY:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final PUFFY_DIAMOND:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final SEMI_CIRCLE:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final SLANTED_SQUARE:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final SOFT_BOOM:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final SOFT_BURST:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final SQUARE:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final SUNNY:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final TRIANGLE:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final VERY_SUNNY:Landroidx/graphics/shapes/RoundedPolygon;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Landroidx/graphics/shapes/CornerRounding;

    const v1, 0x3e19999a    # 0.15f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_15:Landroidx/graphics/shapes/CornerRounding;

    .line 49
    new-instance v0, Landroidx/graphics/shapes/CornerRounding;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_20:Landroidx/graphics/shapes/CornerRounding;

    .line 51
    new-instance v0, Landroidx/graphics/shapes/CornerRounding;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_30:Landroidx/graphics/shapes/CornerRounding;

    .line 53
    new-instance v0, Landroidx/graphics/shapes/CornerRounding;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_50:Landroidx/graphics/shapes/CornerRounding;

    .line 55
    new-instance v0, Landroidx/graphics/shapes/CornerRounding;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_100:Landroidx/graphics/shapes/CornerRounding;

    .line 59
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getCircle()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->CIRCLE:Landroidx/graphics/shapes/RoundedPolygon;

    .line 62
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getSquare()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->SQUARE:Landroidx/graphics/shapes/RoundedPolygon;

    .line 66
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getSlantedSquare()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->SLANTED_SQUARE:Landroidx/graphics/shapes/RoundedPolygon;

    .line 69
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getArch()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->ARCH:Landroidx/graphics/shapes/RoundedPolygon;

    .line 72
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getFan()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->FAN:Landroidx/graphics/shapes/RoundedPolygon;

    .line 75
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getArrow()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->ARROW:Landroidx/graphics/shapes/RoundedPolygon;

    .line 78
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getSemiCircle()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->SEMI_CIRCLE:Landroidx/graphics/shapes/RoundedPolygon;

    const/high16 v0, -0x3dcc0000    # -45.0f

    .line 82
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->getOval(F)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->OVAL:Landroidx/graphics/shapes/RoundedPolygon;

    .line 85
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getPill()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->PILL:Landroidx/graphics/shapes/RoundedPolygon;

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 89
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->getTriangle(F)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v2

    sput-object v2, Lcom/google/android/material/shape/MaterialShapes;->TRIANGLE:Landroidx/graphics/shapes/RoundedPolygon;

    .line 92
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getDiamond()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v2

    sput-object v2, Lcom/google/android/material/shape/MaterialShapes;->DIAMOND:Landroidx/graphics/shapes/RoundedPolygon;

    .line 95
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getClamShell()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v2

    sput-object v2, Lcom/google/android/material/shape/MaterialShapes;->CLAM_SHELL:Landroidx/graphics/shapes/RoundedPolygon;

    .line 98
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getPentagon()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v2

    sput-object v2, Lcom/google/android/material/shape/MaterialShapes;->PENTAGON:Landroidx/graphics/shapes/RoundedPolygon;

    .line 102
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->getGem(F)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->GEM:Landroidx/graphics/shapes/RoundedPolygon;

    .line 104
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getSunny()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->SUNNY:Landroidx/graphics/shapes/RoundedPolygon;

    .line 105
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getVerySunny()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->VERY_SUNNY:Landroidx/graphics/shapes/RoundedPolygon;

    .line 106
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getCookie4()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->COOKIE_4:Landroidx/graphics/shapes/RoundedPolygon;

    .line 107
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getCookie6()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->COOKIE_6:Landroidx/graphics/shapes/RoundedPolygon;

    .line 108
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getCookie7()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->COOKIE_7:Landroidx/graphics/shapes/RoundedPolygon;

    .line 109
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getCookie9()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->COOKIE_9:Landroidx/graphics/shapes/RoundedPolygon;

    .line 110
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getCookie12()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->COOKIE_12:Landroidx/graphics/shapes/RoundedPolygon;

    .line 111
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getGhostish()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->GHOSTISH:Landroidx/graphics/shapes/RoundedPolygon;

    .line 112
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getClover4()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->CLOVER_4:Landroidx/graphics/shapes/RoundedPolygon;

    .line 113
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getClover8()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->CLOVER_8:Landroidx/graphics/shapes/RoundedPolygon;

    .line 114
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getBurst()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->BURST:Landroidx/graphics/shapes/RoundedPolygon;

    .line 115
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getSoftBurst()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->SOFT_BURST:Landroidx/graphics/shapes/RoundedPolygon;

    .line 116
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getBoom()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->BOOM:Landroidx/graphics/shapes/RoundedPolygon;

    .line 117
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getSoftBoom()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->SOFT_BOOM:Landroidx/graphics/shapes/RoundedPolygon;

    .line 118
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getFlower()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->FLOWER:Landroidx/graphics/shapes/RoundedPolygon;

    .line 119
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getPuffy()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->PUFFY:Landroidx/graphics/shapes/RoundedPolygon;

    .line 121
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getPuffyDiamond()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->PUFFY_DIAMOND:Landroidx/graphics/shapes/RoundedPolygon;

    .line 122
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getPixelCircle()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->PIXEL_CIRCLE:Landroidx/graphics/shapes/RoundedPolygon;

    .line 124
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getPixelTriangle()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->PIXEL_TRIANGLE:Landroidx/graphics/shapes/RoundedPolygon;

    .line 125
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getBun()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->BUN:Landroidx/graphics/shapes/RoundedPolygon;

    .line 126
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getHeart()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->HEART:Landroidx/graphics/shapes/RoundedPolygon;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createRotationMatrix(F)Landroid/graphics/Matrix;
    .locals 1

    .line 664
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 665
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    return-object v0
.end method

.method static createScaleMatrix(FF)Landroid/graphics/Matrix;
    .locals 1

    .line 650
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 651
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    return-object v0
.end method

.method public static createShapeDrawable(Landroidx/graphics/shapes/RoundedPolygon;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2

    .line 572
    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    invoke-static {p0}, Landroidx/graphics/shapes/Shapes_androidKt;->toPath(Landroidx/graphics/shapes/RoundedPolygon;)Landroid/graphics/Path;

    move-result-object p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 573
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    return-object p0
.end method

.method static createSkewMatrix(FF)Landroid/graphics/Matrix;
    .locals 1

    .line 679
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 680
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->setSkew(FF)V

    return-object v0
.end method

.method private static customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;",
            ">;IFFZ)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    .line 548
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 549
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/shape/MaterialShapes;->repeatAroundCenter(Ljava/util/List;Ljava/util/List;IFFZ)V

    .line 551
    invoke-static {v1}, Lcom/google/android/material/shape/MaterialShapes;->toVerticesXyArray(Ljava/util/List;)[F

    move-result-object p0

    .line 552
    invoke-static {v1}, Lcom/google/android/material/shape/MaterialShapes;->toRoundingsList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 553
    sget-object p2, Landroidx/graphics/shapes/CornerRounding;->Unrounded:Landroidx/graphics/shapes/CornerRounding;

    invoke-static {p0, p2, p1, v3, v4}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method private static getArch()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 6

    .line 157
    sget-object v4, Landroidx/graphics/shapes/CornerRounding;->Unrounded:Landroidx/graphics/shapes/CornerRounding;

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/graphics/shapes/CornerRounding;

    sget-object v1, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_100:Landroidx/graphics/shapes/CornerRounding;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_20:Landroidx/graphics/shapes/CornerRounding;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 164
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v0, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 158
    invoke-static/range {v0 .. v5}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    const/high16 v1, -0x3cf90000    # -135.0f

    .line 166
    invoke-static {v1}, Lcom/google/android/material/shape/MaterialShapes;->createRotationMatrix(F)Landroid/graphics/Matrix;

    move-result-object v1

    .line 157
    invoke-static {v0, v1}, Landroidx/graphics/shapes/Shapes_androidKt;->transformed(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getArrow()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 9

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f645a1d    # 0.892f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3ea04189    # 0.313f

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, -0x41a2d0e5    # -0.216f

    const v7, 0x3f866666    # 1.05f

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v7, 0x3e53f7cf    # 0.207f

    invoke-direct {v3, v7, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3eff7cee    # 0.499f

    const v7, -0x41dc28f6    # -0.16f

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v7, 0x3e5c28f6    # 0.215f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f9ccccd    # 1.225f

    const v7, 0x3f87ae14    # 1.06f

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v7, 0x3e581062    # 0.211f

    invoke-direct {v3, v7, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    invoke-static {v0, v1, v4, v4, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getBoom()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3ee9fbe7    # 0.457f

    const v4, 0x3e978d50    # 0.296f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v4, 0x3be56042    # 0.007f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v6, 0x0

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, -0x42af1aa0    # -0.051f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v2, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xf

    const/4 v2, 0x0

    .line 397
    invoke-static {v0, v1, v7, v7, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getBun()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 482
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f4bc6a8    # 0.796f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f5a5e35    # 0.853f

    const v6, 0x3f049ba6    # 0.518f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    sget-object v5, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_100:Landroidx/graphics/shapes/CornerRounding;

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v6, 0x3f7df3b6    # 0.992f

    const v7, 0x3f218937    # 0.631f

    invoke-direct {v2, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v6, 0x3f77ced9    # 0.968f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 486
    invoke-static {v0, v1, v4, v4, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getBurst()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 9

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, -0x443b645a    # -0.006f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3bc49ba6    # 0.006f

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v7, 0x0

    invoke-direct {v1, v2, v3, v7}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f178d50    # 0.592f

    const v8, 0x3e21cac1    # 0.158f

    invoke-direct {v2, v3, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    invoke-direct {v3, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 381
    invoke-static {v0, v1, v4, v4, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getCircle()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 2

    .line 130
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroidx/graphics/shapes/ShapesKt;->circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;I)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getClamShell()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 9

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3e2f1aa0    # 0.171f

    const v4, 0x3f574bc7    # 0.841f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v4, 0x3e22d0e5    # 0.159f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v6, 0x0

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, -0x435c28f6    # -0.02f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v8, 0x3e0f5c29    # 0.14f

    invoke-direct {v3, v8, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3e2e147b    # 0.17f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 254
    invoke-static {v0, v1, v7, v7, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getClover4()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3d978d50    # 0.074f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f39999a    # 0.725f

    const v6, -0x42353f7d    # -0.099f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    const v6, 0x3ef3b646    # 0.476f

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 365
    invoke-static {v0, v1, v4, v4, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getClover8()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3d1374bc    # 0.036f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f420c4a    # 0.758f

    const v6, -0x423126e9    # -0.101f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    const v6, 0x3e560419    # 0.209f

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 373
    invoke-static {v0, v1, v4, v4, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getCookie12()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 5

    .line 340
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    const v1, 0x3f4ccccd    # 0.8f

    sget-object v2, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_50:Landroidx/graphics/shapes/CornerRounding;

    const/16 v3, 0xc

    const/high16 v4, 0x3f800000    # 1.0f

    .line 341
    invoke-static {v0, v3, v4, v1, v2}, Landroidx/graphics/shapes/ShapesKt;->star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 347
    invoke-static {v1}, Lcom/google/android/material/shape/MaterialShapes;->createRotationMatrix(F)Landroid/graphics/Matrix;

    move-result-object v1

    .line 340
    invoke-static {v0, v1}, Landroidx/graphics/shapes/Shapes_androidKt;->transformed(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getCookie4()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f9e5604    # 1.237f

    const v4, 0x3f9e353f    # 1.236f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v4, 0x3e841893    # 0.258f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f6b020c    # 0.918f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v2, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v7, 0x3e6e978d    # 0.233f

    invoke-direct {v3, v7, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 303
    invoke-static {v0, v1, v6, v6, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getCookie6()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f391687    # 0.723f

    const v4, 0x3f624dd3    # 0.884f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v4, 0x3ec9ba5e    # 0.394f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f8cac08    # 1.099f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v2, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v7, 0x3ecbc6a8    # 0.398f

    invoke-direct {v3, v7, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 311
    invoke-static {v0, v1, v6, v6, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getCookie7()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 5

    .line 316
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    const/high16 v1, 0x3f400000    # 0.75f

    sget-object v2, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_50:Landroidx/graphics/shapes/CornerRounding;

    const/4 v3, 0x7

    const/high16 v4, 0x3f800000    # 1.0f

    .line 317
    invoke-static {v0, v3, v4, v1, v2}, Landroidx/graphics/shapes/ShapesKt;->star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 323
    invoke-static {v1}, Lcom/google/android/material/shape/MaterialShapes;->createRotationMatrix(F)Landroid/graphics/Matrix;

    move-result-object v1

    .line 316
    invoke-static {v0, v1}, Landroidx/graphics/shapes/Shapes_androidKt;->transformed(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getCookie9()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 5

    .line 328
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    const v1, 0x3f4ccccd    # 0.8f

    sget-object v2, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_50:Landroidx/graphics/shapes/CornerRounding;

    const/16 v3, 0x9

    const/high16 v4, 0x3f800000    # 1.0f

    .line 329
    invoke-static {v0, v3, v4, v1, v2}, Landroidx/graphics/shapes/ShapesKt;->star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 335
    invoke-static {v1}, Lcom/google/android/material/shape/MaterialShapes;->createRotationMatrix(F)Landroid/graphics/Matrix;

    move-result-object v1

    .line 328
    invoke-static {v0, v1}, Landroidx/graphics/shapes/Shapes_androidKt;->transformed(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getDiamond()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f8c49ba    # 1.096f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3e1a9fbe    # 0.151f

    const v6, 0x3f0624dd    # 0.524f

    invoke-direct {v3, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3d23d70a    # 0.04f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v6, 0x3e22d0e5    # 0.159f

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 245
    invoke-static {v0, v1, v4, v4, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getFan()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3ed58106    # 0.417f

    const v6, 0x3e178d50    # 0.148f

    invoke-direct {v4, v6, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v7, 0x3e1a9fbe    # 0.151f

    invoke-direct {v3, v7, v4}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    invoke-direct {v3, v6, v4}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f7a5e35    # 0.978f

    const v6, 0x3ca3d70a    # 0.02f

    invoke-direct {v2, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v6, 0x3f4d9168    # 0.803f

    invoke-direct {v3, v6, v4}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 176
    invoke-static {v0, v3, v1, v1, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getFlower()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3ebd70a4    # 0.37f

    const v4, 0x3e3f7cee    # 0.187f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v4, 0x3ed4fdf4    # 0.416f

    const v5, 0x3d48b439    # 0.049f

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3ec3126f    # 0.381f

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v4, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v4, 0x3ef53f7d    # 0.479f

    invoke-direct {v2, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3dc28f5c    # 0.095f

    invoke-direct {v4, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v4, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/16 v3, 0x8

    .line 416
    invoke-static {v0, v3, v1, v1, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getGem()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3eff7cee    # 0.499f

    const v4, 0x3f82f1aa    # 1.023f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v4, 0x3e76c8b4    # 0.241f

    const v5, 0x3f472b02    # 0.778f

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, -0x445c28f6    # -0.005f

    const v5, 0x3f4ac083    # 0.792f

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3e54fdf4    # 0.208f

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3d958106    # 0.073f

    const v5, 0x3e841893    # 0.258f

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3e6978d5    # 0.228f

    invoke-direct {v3, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3eddb22d    # 0.433f

    const/high16 v5, -0x80000000

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3efb645a    # 0.491f

    invoke-direct {v3, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 272
    invoke-static {v0, v1, v2, v2, v1}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getGem(F)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 1

    .line 277
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getGem()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapes;->createRotationMatrix(F)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/graphics/shapes/Shapes_androidKt;->transformed(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method private static getGhostish()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 9

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    sget-object v5, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_100:Landroidx/graphics/shapes/CornerRounding;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v5, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v5, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f91eb85    # 1.14f

    invoke-direct {v2, v7, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    const v7, 0x3e820c4a    # 0.254f

    const v8, 0x3dd91687    # 0.106f

    invoke-direct {v5, v7, v8}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v5, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f133333    # 0.575f

    const v7, 0x3f67ef9e    # 0.906f

    invoke-direct {v2, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    const v7, 0x3e818937    # 0.253f

    invoke-direct {v5, v7, v4}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v5, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 357
    invoke-static {v0, v1, v3, v3, v1}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getHeart()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3e89374c    # 0.268f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3c83126f    # 0.016f

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f4ac083    # 0.792f

    const v7, -0x4278d4fe    # -0.066f

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v7, 0x3f753f7d    # 0.958f

    invoke-direct {v3, v7, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f883127    # 1.064f

    const v7, 0x3e8d4fdf    # 0.276f

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    sget-object v3, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_100:Landroidx/graphics/shapes/CornerRounding;

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f004189    # 0.501f

    const v7, 0x3f722d0e    # 0.946f

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v7, 0x3e041893    # 0.129f

    invoke-direct {v3, v7, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 496
    invoke-static {v0, v1, v4, v4, v1}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getOval()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 3

    .line 205
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    .line 206
    invoke-static {v0}, Landroidx/graphics/shapes/ShapesKt;->circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f23d70a    # 0.64f

    .line 207
    invoke-static {v1, v2}, Lcom/google/android/material/shape/MaterialShapes;->createScaleMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v1

    .line 205
    invoke-static {v0, v1}, Landroidx/graphics/shapes/Shapes_androidKt;->transformed(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getOval(F)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 1

    .line 212
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getOval()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapes;->createRotationMatrix(F)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/graphics/shapes/Shapes_androidKt;->transformed(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method private static getPentagon()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, -0x43ec8b44    # -0.009f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3e3020c5    # 0.172f

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 261
    invoke-static {v0, v1, v4, v4, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getPill()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 6

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f760419    # 0.961f

    const v4, 0x3d1fbe77    # 0.039f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v4, 0x3eda1cac    # 0.426f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f8020c5    # 1.001f

    const v5, 0x3edb22d1    # 0.428f

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x3f800000    # 1.0f

    const v5, 0x3f1be76d    # 0.609f

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    sget-object v3, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_100:Landroidx/graphics/shapes/CornerRounding;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 221
    invoke-static {v0, v3, v1, v1, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getPixelCircle()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 449
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v6, 0x3f343958    # 0.704f

    invoke-direct {v2, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v4, 0x3d851eb8    # 0.065f

    invoke-direct {v2, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v6, 0x3f57ced9    # 0.843f

    invoke-direct {v2, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v4, 0x3e178d50    # 0.148f

    invoke-direct {v2, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v6, 0x3f6d0e56    # 0.926f

    invoke-direct {v2, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v4, 0x3e978d50    # 0.296f

    invoke-direct {v2, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 457
    invoke-static {v0, v1, v3, v3, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getPixelTriangle()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3de147ae    # 0.11f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3de76c8b    # 0.113f

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3e92f1aa    # 0.287f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v6, 0x3db22d0e    # 0.087f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3ed78d50    # 0.421f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v6, 0x3e2e147b    # 0.17f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f0f5c29    # 0.56f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v6, 0x3e87ae14    # 0.265f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f2c8b44    # 0.674f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f2ccccd    # 0.675f

    const v6, 0x3eb020c5    # 0.344f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f49fbe7    # 0.789f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v6, 0x3ee0c49c    # 0.439f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f6353f8    # 0.888f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 476
    invoke-static {v0, v1, v4, v4, v1}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getPuffy()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 9

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3d591687    # 0.053f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f0b851f    # 0.545f

    const v6, -0x42dc28f6    # -0.04f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    const v6, 0x3ecf5c29    # 0.405f

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f2b851f    # 0.67f

    const v6, -0x42f0a3d7    # -0.035f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    const v6, 0x3eda1cac    # 0.426f

    invoke-direct {v5, v6, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f378d50    # 0.717f

    const v6, 0x3d872b02    # 0.066f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    const v6, 0x3f12f1aa    # 0.574f

    invoke-direct {v5, v6, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f38d4fe    # 0.722f

    const v6, 0x3e03126f    # 0.128f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f46e979    # 0.777f

    const v6, 0x3b03126f    # 0.002f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    const v6, 0x3eb851ec    # 0.36f

    invoke-direct {v5, v6, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f69fbe7    # 0.914f

    const v6, 0x3e189375    # 0.149f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    const v6, 0x3f28f5c3    # 0.66f

    invoke-direct {v5, v6, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f6d0e56    # 0.926f

    const v8, 0x3e93f7cf    # 0.289f

    invoke-direct {v2, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    invoke-direct {v5, v6, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f618937    # 0.881f

    const v6, 0x3eb126e9    # 0.346f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f70a3d7    # 0.94f

    const v6, 0x3eb020c5    # 0.344f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    const v6, 0x3e010625    # 0.126f

    invoke-direct {v5, v6, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v5, 0x3f80624e    # 1.003f

    const v6, 0x3edfbe77    # 0.437f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    const v6, 0x3e828f5c    # 0.255f

    invoke-direct {v5, v6, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 434
    invoke-static {v0, v1, v4, v4, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f3df3b6    # 0.742f

    invoke-static {v1, v2}, Lcom/google/android/material/shape/MaterialShapes;->createScaleMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v1

    .line 433
    invoke-static {v0, v1}, Landroidx/graphics/shapes/Shapes_androidKt;->transformed(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getPuffyDiamond()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f5eb852    # 0.87f

    const v4, 0x3e051eb8    # 0.13f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v4, 0x3e158106    # 0.146f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f516873    # 0.818f

    const v6, 0x3eb6c8b4    # 0.357f

    invoke-direct {v2, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x3f800000    # 1.0f

    const v6, 0x3ea9fbe7    # 0.332f

    invoke-direct {v2, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v6, 0x3f5a5e35    # 0.853f

    invoke-direct {v3, v6, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/4 v3, 0x4

    .line 443
    invoke-static {v0, v3, v1, v1, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getSemiCircle()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 192
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    sget-object v3, Landroidx/graphics/shapes/CornerRounding;->Unrounded:Landroidx/graphics/shapes/CornerRounding;

    const/4 v1, 0x4

    new-array v1, v1, [Landroidx/graphics/shapes/CornerRounding;

    sget-object v2, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_20:Landroidx/graphics/shapes/CornerRounding;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_100:Landroidx/graphics/shapes/CornerRounding;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 197
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v1, 0x3fcccccd    # 1.6f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 192
    invoke-static/range {v0 .. v6}, Landroidx/graphics/shapes/ShapesKt;->rectangle(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getSlantedSquare()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f6d0e56    # 0.926f

    const v4, 0x3f7851ec    # 0.97f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v4, 0x3e418937    # 0.189f

    const v5, 0x3f4f9db2    # 0.811f

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, -0x4353f7cf    # -0.021f

    const v5, 0x3f778d50    # 0.967f

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3e3f7cee    # 0.187f

    const v6, 0x3d6978d5    # 0.057f

    invoke-direct {v3, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 152
    invoke-static {v0, v3, v1, v1, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getSoftBoom()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f3ba5e3    # 0.733f

    const v4, 0x3ee872b0    # 0.454f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v4, 0x3f56c8b4    # 0.839f

    const v5, 0x3edfbe77    # 0.437f

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3f083127    # 0.532f

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v4, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v4, 0x3f72f1aa    # 0.949f

    const v5, 0x3ee5e354    # 0.449f

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3ee0c49c    # 0.439f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v4, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v4, 0x3f7f7cee    # 0.998f

    const v5, 0x3ef4bc6a    # 0.478f

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3e322d0e    # 0.174f

    invoke-direct {v4, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v4, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/16 v3, 0x10

    .line 407
    invoke-static {v0, v3, v1, v1, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getSoftBurst()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3e45a1cb    # 0.193f

    const v4, 0x3e8dd2f2    # 0.277f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v4, 0x3d591687    # 0.053f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v6, 0x0

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3e343958    # 0.176f

    const v7, 0x3d6147ae    # 0.055f

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    invoke-direct {v3, v4, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/16 v3, 0xa

    .line 389
    invoke-static {v0, v3, v1, v1, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getSquare()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 135
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    sget-object v3, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_30:Landroidx/graphics/shapes/CornerRounding;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/graphics/shapes/ShapesKt;->rectangle(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getSunny()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 5

    .line 282
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    const v1, 0x3f4ccccd    # 0.8f

    sget-object v2, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_15:Landroidx/graphics/shapes/CornerRounding;

    const/16 v3, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v4, v1, v2}, Landroidx/graphics/shapes/ShapesKt;->star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getTriangle()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 4

    const/4 v0, 0x0

    .line 226
    sget-object v1, Lcom/google/android/material/shape/MaterialShapes;->CORNER_ROUND_20:Landroidx/graphics/shapes/CornerRounding;

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v0, v0, v1}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon(IFFFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static getTriangle(F)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 1

    .line 236
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapes;->getTriangle()Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapes;->createRotationMatrix(F)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/graphics/shapes/Shapes_androidKt;->transformed(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method private static getVerySunny()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 9

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3f8a3d71    # 1.08f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    const v5, 0x3dae147b    # 0.085f

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v7, 0x0

    invoke-direct {v1, v2, v3, v7}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3eb74bc7    # 0.358f

    const v8, 0x3f57ced9    # 0.843f

    invoke-direct {v2, v3, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    invoke-direct {v3, v5, v6}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    invoke-direct {v1, v2, v3, v7}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 295
    invoke-static {v0, v1, v4, v4, v2}, Lcom/google/android/material/shape/MaterialShapes;->customPolygon(Ljava/util/List;IFFZ)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method public static normalize(Landroidx/graphics/shapes/RoundedPolygon;Z)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 3

    .line 637
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, p1, v0}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;ZLandroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Landroidx/graphics/shapes/RoundedPolygon;ZLandroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 5

    const/4 v0, 0x4

    .line 596
    new-array v0, v0, [F

    if-eqz p1, :cond_0

    .line 602
    invoke-virtual {p0, v0}, Landroidx/graphics/shapes/RoundedPolygon;->calculateMaxBounds([F)[F

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds([F)[F

    .line 607
    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-direct {p1, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 610
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 613
    invoke-static {v0, v0}, Lcom/google/android/material/shape/MaterialShapes;->createScaleMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 614
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 615
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 616
    invoke-static {p0, v0}, Landroidx/graphics/shapes/Shapes_androidKt;->transformed(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method private static repeatAroundCenter(Ljava/util/List;Ljava/util/List;IFFZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;",
            ">;IFFZ)V"
        }
    .end annotation

    .line 506
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 507
    invoke-static {p0, p3, p4}, Lcom/google/android/material/shape/MaterialShapes;->toRadial(Ljava/util/List;FF)V

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v2, p2

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p5, :cond_6

    mul-int/lit8 p2, p2, 0x2

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr v0, p5

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_8

    move v4, v2

    .line 514
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 515
    rem-int/lit8 v5, v3, 0x2

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_2

    :cond_0
    move v5, v2

    :goto_2
    if-eqz v5, :cond_1

    .line 516
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    sub-int/2addr v7, v4

    goto :goto_3

    :cond_1
    move v7, v4

    .line 517
    :goto_3
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    if-gtz v7, :cond_2

    if-nez v5, :cond_4

    :cond_2
    int-to-float v7, v3

    mul-float/2addr v7, v0

    if-eqz v5, :cond_3

    .line 522
    invoke-static {v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$200(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v5, v0, v5

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    invoke-static {v8}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$200(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, p5

    add-float/2addr v5, v8

    goto :goto_4

    .line 523
    :cond_3
    invoke-static {v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$200(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    :goto_4
    add-float/2addr v7, v5

    .line 524
    new-instance v5, Landroid/graphics/PointF;

    invoke-static {v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$200(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 525
    new-instance v7, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    invoke-static {v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$300(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;)Landroidx/graphics/shapes/CornerRounding;

    move-result-object v6

    invoke-direct {v7, v5, v6, v1}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_5
    if-ge v2, p2, :cond_8

    .line 531
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_6
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    int-to-float v4, v2

    mul-float/2addr v4, v0

    .line 532
    invoke-static {v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$200(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    .line 533
    new-instance v5, Landroid/graphics/PointF;

    invoke-static {v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$200(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 534
    new-instance v4, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    invoke-static {v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$300(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;)Landroidx/graphics/shapes/CornerRounding;

    move-result-object v3

    invoke-direct {v4, v5, v3, v1}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;Lcom/google/android/material/shape/MaterialShapes$1;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 538
    :cond_8
    invoke-static {p1, p3, p4}, Lcom/google/android/material/shape/MaterialShapes;->toCartesian(Ljava/util/List;FF)V

    return-void
.end method

.method private static toCartesian(Ljava/util/List;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;",
            ">;FF)V"
        }
    .end annotation

    .line 693
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 694
    invoke-static {v0, p1, p2}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$500(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static toRadial(Ljava/util/List;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;",
            ">;FF)V"
        }
    .end annotation

    .line 686
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 687
    invoke-static {v0, p1, p2}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$400(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static toRoundingsList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;"
        }
    .end annotation

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 712
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 713
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    invoke-static {v2}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$300(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;)Landroidx/graphics/shapes/CornerRounding;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static toVerticesXyArray(Ljava/util/List;)[F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;",
            ">;)[F"
        }
    .end annotation

    .line 700
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 701
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    .line 702
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    invoke-static {v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$200(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 703
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    invoke-static {v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->access$200(Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
