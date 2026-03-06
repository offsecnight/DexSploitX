.class public Lcom/google/android/material/color/utilities/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private background:I

.field private error:I

.field private errorContainer:I

.field private inverseOnSurface:I

.field private inversePrimary:I

.field private inverseSurface:I

.field private onBackground:I

.field private onError:I

.field private onErrorContainer:I

.field private onPrimary:I

.field private onPrimaryContainer:I

.field private onSecondary:I

.field private onSecondaryContainer:I

.field private onSurface:I

.field private onSurfaceVariant:I

.field private onTertiary:I

.field private onTertiaryContainer:I

.field private outline:I

.field private outlineVariant:I

.field private primary:I

.field private primaryContainer:I

.field private scrim:I

.field private secondary:I

.field private secondaryContainer:I

.field private shadow:I

.field private surface:I

.field private surfaceVariant:I

.field private tertiary:I

.field private tertiaryContainer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    .line 101
    iput p2, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    .line 102
    iput p3, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    .line 103
    iput p4, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    .line 104
    iput p5, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    .line 105
    iput p6, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    .line 106
    iput p7, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    .line 107
    iput p8, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    .line 108
    iput p9, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    .line 109
    iput p10, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    .line 110
    iput p11, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    .line 111
    iput p12, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    .line 112
    iput p13, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    .line 113
    iput p14, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    .line 114
    iput p15, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    move/from16 p1, p16

    .line 115
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    move/from16 p1, p17

    .line 116
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    move/from16 p1, p18

    .line 117
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    move/from16 p1, p19

    .line 118
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    move/from16 p1, p20

    .line 119
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    move/from16 p1, p21

    .line 120
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    move/from16 p1, p22

    .line 121
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    move/from16 p1, p23

    .line 122
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    move/from16 p1, p24

    .line 123
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    move/from16 p1, p25

    .line 124
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    move/from16 p1, p26

    .line 125
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    move/from16 p1, p27

    .line 126
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    move/from16 p1, p28

    .line 127
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    move/from16 p1, p29

    .line 128
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    return-void
.end method

.method public static dark(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 138
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->of(I)Lcom/google/android/material/color/utilities/CorePalette;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object p0

    return-object p0
.end method

.method public static darkContent(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 148
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->contentOf(I)Lcom/google/android/material/color/utilities/CorePalette;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object p0

    return-object p0
.end method

.method private static darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;
    .locals 7

    .line 185
    new-instance v0, Lcom/google/android/material/color/utilities/Scheme;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/Scheme;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x50

    .line 186
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v3, 0x14

    .line 187
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v4, 0x1e

    .line 188
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v5, 0x5a

    .line 189
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 190
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 191
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 192
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 193
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 194
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 195
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 196
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 197
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 198
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withError(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 199
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnError(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 200
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 201
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v6, 0xa

    .line 202
    invoke-virtual {v1, v6}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 203
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 204
    invoke-virtual {v1, v6}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 205
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 206
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 207
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x3c

    .line 208
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutline(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 209
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/4 v2, 0x0

    .line 210
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withShadow(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 211
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withScrim(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 212
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 213
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v1, 0x28

    .line 214
    invoke-virtual {p0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/color/utilities/Scheme;->withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object p0

    return-object p0
.end method

.method public static light(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 133
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->of(I)Lcom/google/android/material/color/utilities/CorePalette;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object p0

    return-object p0
.end method

.method public static lightContent(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 143
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->contentOf(I)Lcom/google/android/material/color/utilities/CorePalette;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object p0

    return-object p0
.end method

.method private static lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;
    .locals 6

    .line 152
    new-instance v0, Lcom/google/android/material/color/utilities/Scheme;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/Scheme;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x28

    .line 153
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v3, 0x64

    .line 154
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v4, 0x5a

    .line 155
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v5, 0xa

    .line 156
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 157
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 158
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 159
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 160
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 161
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 162
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 163
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 164
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 165
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withError(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 166
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnError(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 167
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 168
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x63

    .line 169
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 170
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 171
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 172
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 173
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x1e

    .line 174
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x32

    .line 175
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutline(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x50

    .line 176
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/4 v3, 0x0

    .line 177
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withShadow(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 178
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withScrim(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v3, 0x14

    .line 179
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v3, 0x5f

    .line 180
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 181
    invoke-virtual {p0, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/color/utilities/Scheme;->withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 692
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/color/utilities/Scheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 696
    :cond_1
    check-cast p1, Lcom/google/android/material/color/utilities/Scheme;

    .line 698
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    if-eq v1, v3, :cond_2

    return v2

    .line 701
    :cond_2
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    if-eq v1, v3, :cond_3

    return v2

    .line 704
    :cond_3
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    if-eq v1, v3, :cond_4

    return v2

    .line 707
    :cond_4
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    if-eq v1, v3, :cond_5

    return v2

    .line 710
    :cond_5
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    if-eq v1, v3, :cond_6

    return v2

    .line 713
    :cond_6
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    if-eq v1, v3, :cond_7

    return v2

    .line 716
    :cond_7
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    if-eq v1, v3, :cond_8

    return v2

    .line 719
    :cond_8
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    if-eq v1, v3, :cond_9

    return v2

    .line 722
    :cond_9
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    if-eq v1, v3, :cond_a

    return v2

    .line 725
    :cond_a
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    if-eq v1, v3, :cond_b

    return v2

    .line 728
    :cond_b
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    if-eq v1, v3, :cond_c

    return v2

    .line 731
    :cond_c
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    if-eq v1, v3, :cond_d

    return v2

    .line 734
    :cond_d
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->error:I

    if-eq v1, v3, :cond_e

    return v2

    .line 737
    :cond_e
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    if-eq v1, v3, :cond_f

    return v2

    .line 740
    :cond_f
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    if-eq v1, v3, :cond_10

    return v2

    .line 743
    :cond_10
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    if-eq v1, v3, :cond_11

    return v2

    .line 746
    :cond_11
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->background:I

    if-eq v1, v3, :cond_12

    return v2

    .line 749
    :cond_12
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    if-eq v1, v3, :cond_13

    return v2

    .line 752
    :cond_13
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    if-eq v1, v3, :cond_14

    return v2

    .line 755
    :cond_14
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    if-eq v1, v3, :cond_15

    return v2

    .line 758
    :cond_15
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    if-eq v1, v3, :cond_16

    return v2

    .line 761
    :cond_16
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    if-eq v1, v3, :cond_17

    return v2

    .line 764
    :cond_17
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    if-eq v1, v3, :cond_18

    return v2

    .line 767
    :cond_18
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    if-eq v1, v3, :cond_19

    return v2

    .line 770
    :cond_19
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    if-eq v1, v3, :cond_1a

    return v2

    .line 773
    :cond_1a
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    if-eq v1, v3, :cond_1b

    return v2

    .line 776
    :cond_1b
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    if-eq v1, v3, :cond_1c

    return v2

    .line 779
    :cond_1c
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    if-eq v1, v3, :cond_1d

    return v2

    .line 782
    :cond_1d
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    iget p1, p1, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    if-eq v1, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public getBackground()I
    .locals 1

    .line 442
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    return v0
.end method

.method public getError()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    return v0
.end method

.method public getErrorContainer()I
    .locals 1

    .line 414
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    return v0
.end method

.method public getInverseOnSurface()I
    .locals 1

    .line 596
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    return v0
.end method

.method public getInversePrimary()I
    .locals 1

    .line 610
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    return v0
.end method

.method public getInverseSurface()I
    .locals 1

    .line 582
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    return v0
.end method

.method public getOnBackground()I
    .locals 1

    .line 456
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    return v0
.end method

.method public getOnError()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    return v0
.end method

.method public getOnErrorContainer()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    return v0
.end method

.method public getOnPrimary()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    return v0
.end method

.method public getOnPrimaryContainer()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    return v0
.end method

.method public getOnSecondary()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    return v0
.end method

.method public getOnSecondaryContainer()I
    .locals 1

    .line 316
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    return v0
.end method

.method public getOnSurface()I
    .locals 1

    .line 484
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    return v0
.end method

.method public getOnSurfaceVariant()I
    .locals 1

    .line 512
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    return v0
.end method

.method public getOnTertiary()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    return v0
.end method

.method public getOnTertiaryContainer()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    return v0
.end method

.method public getOutline()I
    .locals 1

    .line 526
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    return v0
.end method

.method public getOutlineVariant()I
    .locals 1

    .line 540
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    return v0
.end method

.method public getPrimary()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    return v0
.end method

.method public getPrimaryContainer()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    return v0
.end method

.method public getScrim()I
    .locals 1

    .line 568
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    return v0
.end method

.method public getSecondary()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    return v0
.end method

.method public getSecondaryContainer()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    return v0
.end method

.method public getShadow()I
    .locals 1

    .line 554
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    return v0
.end method

.method public getSurface()I
    .locals 1

    .line 470
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    return v0
.end method

.method public getSurfaceVariant()I
    .locals 1

    .line 498
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    return v0
.end method

.method public getTertiary()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    return v0
.end method

.method public getTertiaryContainer()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 791
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 792
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 793
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 794
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 795
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 796
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 797
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 798
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 799
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 800
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 801
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 802
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 803
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 804
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 805
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 806
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 807
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 808
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 809
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 810
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 811
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 812
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 813
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 814
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 815
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 816
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 817
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 818
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 819
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 820
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setBackground(I)V
    .locals 0

    .line 446
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    return-void
.end method

.method public setError(I)V
    .locals 0

    .line 390
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    return-void
.end method

.method public setErrorContainer(I)V
    .locals 0

    .line 418
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    return-void
.end method

.method public setInverseOnSurface(I)V
    .locals 0

    .line 600
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    return-void
.end method

.method public setInversePrimary(I)V
    .locals 0

    .line 614
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    return-void
.end method

.method public setInverseSurface(I)V
    .locals 0

    .line 586
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    return-void
.end method

.method public setOnBackground(I)V
    .locals 0

    .line 460
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    return-void
.end method

.method public setOnError(I)V
    .locals 0

    .line 404
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    return-void
.end method

.method public setOnErrorContainer(I)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    return-void
.end method

.method public setOnPrimary(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    return-void
.end method

.method public setOnPrimaryContainer(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    return-void
.end method

.method public setOnSecondary(I)V
    .locals 0

    .line 292
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    return-void
.end method

.method public setOnSecondaryContainer(I)V
    .locals 0

    .line 320
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    return-void
.end method

.method public setOnSurface(I)V
    .locals 0

    .line 488
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    return-void
.end method

.method public setOnSurfaceVariant(I)V
    .locals 0

    .line 516
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    return-void
.end method

.method public setOnTertiary(I)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    return-void
.end method

.method public setOnTertiaryContainer(I)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    return-void
.end method

.method public setOutline(I)V
    .locals 0

    .line 530
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    return-void
.end method

.method public setOutlineVariant(I)V
    .locals 0

    .line 544
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    return-void
.end method

.method public setPrimary(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    return-void
.end method

.method public setPrimaryContainer(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    return-void
.end method

.method public setScrim(I)V
    .locals 0

    .line 572
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    return-void
.end method

.method public setSecondary(I)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    return-void
.end method

.method public setSecondaryContainer(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    return-void
.end method

.method public setShadow(I)V
    .locals 0

    .line 558
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    return-void
.end method

.method public setSurface(I)V
    .locals 0

    .line 474
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    return-void
.end method

.method public setSurfaceVariant(I)V
    .locals 0

    .line 502
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    return-void
.end method

.method public setTertiary(I)V
    .locals 0

    .line 334
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    return-void
.end method

.method public setTertiaryContainer(I)V
    .locals 0

    .line 362
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scheme{primary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onPrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onPrimaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onSecondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onSecondaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tertiary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onTertiary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tertiaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onTertiaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onErrorContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surfaceVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onSurfaceVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outlineVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scrim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inverseSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inverseOnSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inversePrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBackground(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 451
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    return-object p0
.end method

.method public withError(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 395
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    return-object p0
.end method

.method public withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 423
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    return-object p0
.end method

.method public withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 605
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    return-object p0
.end method

.method public withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 619
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    return-object p0
.end method

.method public withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 591
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    return-object p0
.end method

.method public withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 465
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    return-object p0
.end method

.method public withOnError(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 409
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    return-object p0
.end method

.method public withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 437
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    return-object p0
.end method

.method public withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 241
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    return-object p0
.end method

.method public withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 269
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    return-object p0
.end method

.method public withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 297
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    return-object p0
.end method

.method public withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 325
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    return-object p0
.end method

.method public withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 493
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    return-object p0
.end method

.method public withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 521
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    return-object p0
.end method

.method public withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 353
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    return-object p0
.end method

.method public withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 381
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    return-object p0
.end method

.method public withOutline(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 535
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    return-object p0
.end method

.method public withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 549
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    return-object p0
.end method

.method public withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 227
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    return-object p0
.end method

.method public withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 255
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    return-object p0
.end method

.method public withScrim(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 577
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    return-object p0
.end method

.method public withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 283
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    return-object p0
.end method

.method public withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 311
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    return-object p0
.end method

.method public withShadow(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 563
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    return-object p0
.end method

.method public withSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 479
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    return-object p0
.end method

.method public withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 507
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    return-object p0
.end method

.method public withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 339
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    return-object p0
.end method

.method public withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 367
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    return-object p0
.end method
