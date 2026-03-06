.class public final Lcom/google/android/material/color/utilities/TonalPalette;
.super Ljava/lang/Object;
.source "TonalPalette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;
    }
.end annotation


# instance fields
.field cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field chroma:D

.field hue:D

.field keyColor:Lcom/google/android/material/color/utilities/Hct;


# direct methods
.method private constructor <init>(DDLcom/google/android/material/color/utilities/Hct;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    .line 72
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    .line 73
    iput-wide p3, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    .line 74
    iput-object p5, p0, Lcom/google/android/material/color/utilities/TonalPalette;->keyColor:Lcom/google/android/material/color/utilities/Hct;

    return-void
.end method

.method public static fromHct(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 6

    .line 55
    new-instance v0, Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DDLcom/google/android/material/color/utilities/Hct;)V

    return-object v0
.end method

.method public static fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 7

    .line 66
    new-instance v0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;-><init>(DD)V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->create()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v6

    .line 67
    new-instance v1, Lcom/google/android/material/color/utilities/TonalPalette;

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DDLcom/google/android/material/color/utilities/Hct;)V

    return-object v1
.end method

.method public static fromInt(I)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHct(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getChroma()D
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    return-wide v0
.end method

.method public getHct(D)Lcom/google/android/material/color/utilities/Hct;
    .locals 6

    .line 94
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p1

    return-object p1
.end method

.method public getHue()D
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    return-wide v0
.end method

.method public getKeyColor()Lcom/google/android/material/color/utilities/Hct;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->keyColor:Lcom/google/android/material/color/utilities/Hct;

    return-object v0
.end method

.method public tone(I)I
    .locals 7

    .line 84
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 86
    iget-wide v1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iget-wide v3, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    int-to-double v5, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
