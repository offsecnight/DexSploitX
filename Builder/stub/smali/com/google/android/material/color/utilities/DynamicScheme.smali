.class public Lcom/google/android/material/color/utilities/DynamicScheme;
.super Ljava/lang/Object;
.source "DynamicScheme.java"


# instance fields
.field public final contrastLevel:D

.field public final errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

.field public final isDark:Z

.field public final neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

.field public final neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

.field public final primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

.field public final secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

.field public final sourceColorArgb:I

.field public final sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

.field public final tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

.field public final variant:Lcom/google/android/material/color/utilities/Variant;


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/Variant;ZDLcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/TonalPalette;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->sourceColorArgb:I

    .line 57
    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

    .line 58
    iput-object p2, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    .line 59
    iput-boolean p3, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    .line 60
    iput-wide p4, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    .line 62
    iput-object p6, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 63
    iput-object p7, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 64
    iput-object p8, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 65
    iput-object p9, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 66
    iput-object p10, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    const-wide/high16 p1, 0x4039000000000000L    # 25.0

    const-wide/high16 p3, 0x4055000000000000L    # 84.0

    .line 67
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-void
.end method

.method public static getRotatedHue(Lcom/google/android/material/color/utilities/Hct;[D[D)D
    .locals 8

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v0

    .line 82
    array-length p0, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v2, :cond_0

    .line 83
    aget-wide p0, p2, v3

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide p0

    return-wide p0

    .line 85
    :cond_0
    array-length p0, p1

    :goto_0
    add-int/lit8 v2, p0, -0x2

    if-gt v3, v2, :cond_2

    .line 87
    aget-wide v4, p1, v3

    add-int/lit8 v2, v3, 0x1

    .line 88
    aget-wide v6, p1, v2

    cmpg-double v4, v4, v0

    if-gez v4, :cond_1

    cmpg-double v4, v0, v6

    if-gez v4, :cond_1

    .line 90
    aget-wide p0, p2, v3

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    return-wide v0
.end method


# virtual methods
.method public getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I
    .locals 0

    .line 104
    invoke-virtual {p1, p0}, Lcom/google/android/material/color/utilities/DynamicColor;->getArgb(Lcom/google/android/material/color/utilities/DynamicScheme;)I

    move-result p1

    return p1
.end method

.method public getBackground()I
    .locals 1

    .line 128
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getControlActivated()I
    .locals 1

    .line 324
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->controlActivated()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getControlHighlight()I
    .locals 1

    .line 332
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->controlHighlight()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getControlNormal()I
    .locals 1

    .line 328
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->controlNormal()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getError()I
    .locals 1

    .line 260
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getErrorContainer()I
    .locals 1

    .line 268
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getHct(Lcom/google/android/material/color/utilities/DynamicColor;)Lcom/google/android/material/color/utilities/Hct;
    .locals 0

    .line 100
    invoke-virtual {p1, p0}, Lcom/google/android/material/color/utilities/DynamicColor;->getHct(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p1

    return-object p1
.end method

.method public getInverseOnSurface()I
    .locals 1

    .line 184
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inverseOnSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getInversePrimary()I
    .locals 1

    .line 224
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inversePrimary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getInverseSurface()I
    .locals 1

    .line 180
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getNeutralPaletteKeyColor()I
    .locals 1

    .line 120
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->neutralPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getNeutralVariantPaletteKeyColor()I
    .locals 1

    .line 124
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->neutralVariantPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnBackground()I
    .locals 1

    .line 132
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onBackground()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnError()I
    .locals 1

    .line 264
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onError()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnErrorContainer()I
    .locals 1

    .line 272
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onErrorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnPrimary()I
    .locals 1

    .line 212
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onPrimary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnPrimaryContainer()I
    .locals 1

    .line 220
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onPrimaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnPrimaryFixed()I
    .locals 1

    .line 284
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onPrimaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnPrimaryFixedVariant()I
    .locals 1

    .line 288
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onPrimaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnSecondary()I
    .locals 1

    .line 232
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSecondary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnSecondaryContainer()I
    .locals 1

    .line 240
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSecondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnSecondaryFixed()I
    .locals 1

    .line 300
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSecondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnSecondaryFixedVariant()I
    .locals 1

    .line 304
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSecondaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnSurface()I
    .locals 1

    .line 168
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnSurfaceVariant()I
    .locals 1

    .line 176
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSurfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnTertiary()I
    .locals 1

    .line 248
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onTertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnTertiaryContainer()I
    .locals 1

    .line 256
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onTertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnTertiaryFixed()I
    .locals 1

    .line 316
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onTertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOnTertiaryFixedVariant()I
    .locals 1

    .line 320
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onTertiaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOutline()I
    .locals 1

    .line 188
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->outline()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getOutlineVariant()I
    .locals 1

    .line 192
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->outlineVariant()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getPrimary()I
    .locals 1

    .line 208
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getPrimaryContainer()I
    .locals 1

    .line 216
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getPrimaryFixed()I
    .locals 1

    .line 276
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getPrimaryFixedDim()I
    .locals 1

    .line 280
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getPrimaryPaletteKeyColor()I
    .locals 1

    .line 108
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getScrim()I
    .locals 1

    .line 200
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->scrim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSecondary()I
    .locals 1

    .line 228
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSecondaryContainer()I
    .locals 1

    .line 236
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSecondaryFixed()I
    .locals 1

    .line 292
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSecondaryFixedDim()I
    .locals 1

    .line 296
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSecondaryPaletteKeyColor()I
    .locals 1

    .line 112
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getShadow()I
    .locals 1

    .line 196
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->shadow()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSurface()I
    .locals 1

    .line 136
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSurfaceBright()I
    .locals 1

    .line 144
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSurfaceContainer()I
    .locals 1

    .line 156
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSurfaceContainerHigh()I
    .locals 1

    .line 160
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceContainerHigh()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSurfaceContainerHighest()I
    .locals 1

    .line 164
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceContainerHighest()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSurfaceContainerLow()I
    .locals 1

    .line 152
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceContainerLow()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSurfaceContainerLowest()I
    .locals 1

    .line 148
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceContainerLowest()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSurfaceDim()I
    .locals 1

    .line 140
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSurfaceTint()I
    .locals 1

    .line 204
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceTint()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getSurfaceVariant()I
    .locals 1

    .line 172
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getTertiary()I
    .locals 1

    .line 244
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getTertiaryContainer()I
    .locals 1

    .line 252
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getTertiaryFixed()I
    .locals 1

    .line 308
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getTertiaryFixedDim()I
    .locals 1

    .line 312
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getTertiaryPaletteKeyColor()I
    .locals 1

    .line 116
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getTextHintInverse()I
    .locals 1

    .line 352
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textHintInverse()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getTextPrimaryInverse()I
    .locals 1

    .line 336
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textPrimaryInverse()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getTextPrimaryInverseDisableOnly()I
    .locals 1

    .line 344
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textPrimaryInverseDisableOnly()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getTextSecondaryAndTertiaryInverse()I
    .locals 1

    .line 340
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textSecondaryAndTertiaryInverse()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method

.method public getTextSecondaryAndTertiaryInverseDisabled()I
    .locals 1

    .line 348
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textSecondaryAndTertiaryInverseDisabled()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/DynamicScheme;->getArgb(Lcom/google/android/material/color/utilities/DynamicColor;)I

    move-result v0

    return v0
.end method
