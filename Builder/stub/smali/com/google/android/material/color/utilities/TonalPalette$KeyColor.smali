.class final Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;
.super Ljava/lang/Object;
.source "TonalPalette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/utilities/TonalPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyColor"
.end annotation


# static fields
.field private static final MAX_CHROMA_VALUE:D = 200.0


# instance fields
.field private final chromaCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final hue:D

.field private final requestedChroma:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->chromaCache:Ljava/util/Map;

    .line 123
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->hue:D

    .line 124
    iput-wide p3, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->requestedChroma:D

    return-void
.end method

.method private maxChroma(I)D
    .locals 7

    .line 178
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->chromaCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 179
    iget-wide v1, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->hue:D

    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    int-to-double v5, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->chromaCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->chromaCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public create()Lcom/google/android/material/color/utilities/Hct;
    .locals 13

    const/4 v0, 0x0

    const/16 v1, 0x64

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_5

    add-int v3, v2, v1

    .line 146
    div-int/lit8 v3, v3, 0x2

    .line 147
    invoke-direct {p0, v3}, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->maxChroma(I)D

    move-result-wide v4

    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v6}, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->maxChroma(I)D

    move-result-wide v7

    cmpg-double v4, v4, v7

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    .line 148
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->maxChroma(I)D

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->requestedChroma:D

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v9, v11

    cmpl-double v5, v7, v9

    if-ltz v5, :cond_3

    add-int/lit8 v4, v2, -0x32

    .line 153
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v5, v1, -0x32

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v2, v3, :cond_2

    .line 157
    iget-wide v6, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->hue:D

    iget-wide v8, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->requestedChroma:D

    int-to-double v10, v2

    invoke-static/range {v6 .. v11}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    return-object v0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    move v2, v6

    goto :goto_0

    :cond_4
    :goto_2
    move v1, v3

    goto :goto_0

    .line 173
    :cond_5
    iget-wide v3, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->hue:D

    iget-wide v5, p0, Lcom/google/android/material/color/utilities/TonalPalette$KeyColor;->requestedChroma:D

    int-to-double v7, v2

    invoke-static/range {v3 .. v8}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    return-object v0
.end method
