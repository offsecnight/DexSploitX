.class public final Lcom/google/android/material/color/utilities/MaterialDynamicColors;
.super Ljava/lang/Object;
.source "MaterialDynamicColors.java"


# instance fields
.field private final isExtendedFidelity:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isExtendedFidelity:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isExtendedFidelity:Z

    return-void
.end method

.method static findDesiredChromaByTone(DDDZ)D
    .locals 8

    .line 960
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    .line 961
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v1

    cmpg-double v1, v1, p2

    if-gez v1, :cond_4

    .line 962
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v1

    .line 963
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    cmpg-double v3, v3, p2

    if-gez v3, :cond_4

    if-eqz p6, :cond_0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    goto :goto_1

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :goto_1
    add-double/2addr p4, v3

    .line 965
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v3

    .line 966
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v4

    cmpl-double v4, v1, v4

    if-lez v4, :cond_1

    goto :goto_2

    .line 969
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v4

    sub-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fd999999999999aL    # 0.4

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    :goto_2
    return-wide p4

    .line 973
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v4

    sub-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 974
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v6

    sub-double/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    move-object v0, v3

    .line 978
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    goto :goto_0

    :cond_4
    return-wide p4
.end method

.method private isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z
    .locals 3

    .line 944
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isExtendedFidelity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    sget-object v2, Lcom/google/android/material/color/utilities/Variant;->MONOCHROME:Lcom/google/android/material/color/utilities/Variant;

    if-eq v0, v2, :cond_0

    iget-object v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    sget-object v2, Lcom/google/android/material/color/utilities/Variant;->NEUTRAL:Lcom/google/android/material/color/utilities/Variant;

    if-eq v0, v2, :cond_0

    return v1

    .line 949
    :cond_0
    iget-object v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    sget-object v2, Lcom/google/android/material/color/utilities/Variant;->FIDELITY:Lcom/google/android/material/color/utilities/Variant;

    if-eq v0, v2, :cond_2

    iget-object p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    sget-object v0, Lcom/google/android/material/color/utilities/Variant;->CONTENT:Lcom/google/android/material/color/utilities/Variant;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private static isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z
    .locals 1

    .line 953
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    sget-object v0, Lcom/google/android/material/color/utilities/Variant;->MONOCHROME:Lcom/google/android/material/color/utilities/Variant;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$background$10(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$background$11(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 103
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$controlActivated$145(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 866
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$controlActivated$146(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 866
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$controlHighlight$149(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 890
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$controlHighlight$150(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 891
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$controlHighlight$151(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 897
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide v0, 0x3fc999999999999aL    # 0.2

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$controlNormal$147(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$controlNormal$148(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 875
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$error$91(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 629
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$error$92(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 630
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$errorContainer$97(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 656
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$errorContainer$98(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 657
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$inverseOnSurface$39(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$inverseOnSurface$40(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 300
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4057c00000000000L    # 95.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$inversePrimary$64(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$inversePrimary$65(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 458
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$inverseSurface$37(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$inverseSurface$38(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 287
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$neutralPaletteKeyColor$6(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$neutralPaletteKeyColor$7(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 87
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$neutralVariantPaletteKeyColor$8(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$neutralVariantPaletteKeyColor$9(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 95
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onBackground$12(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onBackground$13(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 116
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onError$94(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onError$95(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 644
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onErrorContainer$100(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 670
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onErrorContainer$101(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 3

    .line 672
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    const-wide v1, 0x4056800000000000L    # 90.0

    if-eqz v0, :cond_1

    .line 673
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 675
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onPrimary$55(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onPrimary$56(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 398
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 401
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onPrimaryContainer$61(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onPrimaryFixed$109(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onPrimaryFixed$110(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 717
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onPrimaryFixedVariant$113(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 729
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onPrimaryFixedVariant$114(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 730
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onSecondary$70(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onSecondary$71(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 3

    .line 486
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_1

    .line 487
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 489
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onSecondaryContainer$76(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onSecondaryFixed$123(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 772
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onSecondaryFixed$124(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 773
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onSecondaryFixedVariant$127(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onSecondaryFixedVariant$128(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 786
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onSurface$31(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onSurface$32(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 248
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onSurfaceVariant$35(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onSurfaceVariant$36(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 274
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onTertiary$82(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onTertiary$83(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 569
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 572
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onTertiaryContainer$88(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 608
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onTertiaryFixed$137(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 828
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onTertiaryFixed$138(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 829
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onTertiaryFixedVariant$141(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 841
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onTertiaryFixedVariant$142(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 842
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$outline$42(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$outline$43(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 313
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$outlineVariant$44(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$outlineVariant$45(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 326
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$primary$52(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$primary$53(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 379
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 382
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$primaryContainer$58(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$primaryFixed$103(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 688
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$primaryFixed$104(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 689
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$primaryFixedDim$106(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 702
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$primaryFixedDim$107(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 703
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$primaryPaletteKeyColor$0(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$primaryPaletteKeyColor$1(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 63
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$scrim$48(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$scrim$49(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    const-wide/16 v0, 0x0

    .line 352
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$secondary$67(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$secondary$68(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 471
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$secondaryContainer$73(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$secondaryFixed$117(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 742
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$secondaryFixed$118(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 743
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$secondaryFixedDim$120(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 757
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$secondaryFixedDim$121(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 758
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide v0, 0x4051800000000000L    # 70.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$secondaryPaletteKeyColor$2(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$secondaryPaletteKeyColor$3(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 71
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$shadow$46(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$shadow$47(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    const-wide/16 v0, 0x0

    .line 339
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surface$15(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surface$16(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 129
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceBright$19(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceBright$20(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 10

    .line 157
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v6, 0x403d000000000000L    # 29.0

    const-wide/high16 v8, 0x4041000000000000L    # 34.0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceContainer$25(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceContainer$26(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 11

    .line 201
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    .line 202
    new-instance v1, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v0

    goto :goto_0

    .line 203
    :cond_0
    new-instance v2, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v7, 0x4057000000000000L    # 92.0

    const-wide v9, 0x4056800000000000L    # 90.0

    const-wide v3, 0x4057800000000000L    # 94.0

    const-wide v5, 0x4057800000000000L    # 94.0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v0

    .line 201
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerHigh$27(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerHigh$28(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 11

    .line 217
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    .line 218
    new-instance v1, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    const-wide/high16 v2, 0x4031000000000000L    # 17.0

    const-wide/high16 v4, 0x4031000000000000L    # 17.0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v0

    goto :goto_0

    .line 219
    :cond_0
    new-instance v2, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v7, 0x4056000000000000L    # 88.0

    const-wide v9, 0x4055400000000000L    # 85.0

    const-wide/high16 v3, 0x4057000000000000L    # 92.0

    const-wide/high16 v5, 0x4057000000000000L    # 92.0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v0

    .line 217
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerHighest$29(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerHighest$30(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 11

    .line 233
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v6, 0x403a000000000000L    # 26.0

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    const-wide/high16 v2, 0x4036000000000000L    # 22.0

    const-wide/high16 v4, 0x4036000000000000L    # 22.0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v0

    goto :goto_0

    .line 235
    :cond_0
    new-instance v2, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v7, 0x4055000000000000L    # 84.0

    const-wide/high16 v9, 0x4054000000000000L    # 80.0

    const-wide v3, 0x4056800000000000L    # 90.0

    const-wide v5, 0x4056800000000000L    # 90.0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v0

    .line 233
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerLow$23(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerLow$24(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 11

    .line 185
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    .line 186
    new-instance v1, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v0

    goto :goto_0

    .line 187
    :cond_0
    new-instance v2, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v7, 0x4058000000000000L    # 96.0

    const-wide v9, 0x4057c00000000000L    # 95.0

    const-wide/high16 v3, 0x4058000000000000L    # 96.0

    const-wide/high16 v5, 0x4058000000000000L    # 96.0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v0

    .line 185
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerLowest$21(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerLowest$22(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 10

    .line 171
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/16 v8, 0x0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceDim$17(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceDim$18(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 11

    .line 143
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v7, 0x4054000000000000L    # 80.0

    const-wide v9, 0x4052c00000000000L    # 75.0

    const-wide v3, 0x4055c00000000000L    # 87.0

    const-wide v5, 0x4055c00000000000L    # 87.0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceTint$50(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceTint$51(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 365
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceVariant$33(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceVariant$34(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 261
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$tertiary$79(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$tertiary$80(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 550
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 553
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$tertiaryContainer$85(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$tertiaryFixed$131(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 798
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$tertiaryFixed$132(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 799
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$tertiaryFixedDim$134(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$tertiaryFixedDim$135(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 814
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$tertiaryPaletteKeyColor$4(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$tertiaryPaletteKeyColor$5(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 79
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$textHintInverse$160(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 940
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$textHintInverse$161(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 940
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$textPrimaryInverse$152(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 904
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$textPrimaryInverse$153(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 904
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$textPrimaryInverseDisableOnly$156(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 922
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$textPrimaryInverseDisableOnly$157(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 923
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$textSecondaryAndTertiaryInverse$154(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 913
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$textSecondaryAndTertiaryInverse$155(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 914
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$textSecondaryAndTertiaryInverseDisabled$158(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 932
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$textSecondaryAndTertiaryInverseDisabled$159(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 933
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public background()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 100
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda100;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda100;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda101;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda101;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "background"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public controlActivated()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    .line 865
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda70;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda71;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda71;-><init>()V

    const-string v2, "control_activated"

    invoke-static {v2, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public controlHighlight()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10

    .line 888
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda93;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda93;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda94;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda94;-><init>()V

    new-instance v9, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda95;

    invoke-direct {v9}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda95;-><init>()V

    const-string v1, "control_highlight"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public controlNormal()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    .line 874
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda55;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda66;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda66;-><init>()V

    const-string v2, "control_normal"

    invoke-static {v2, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public error()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 627
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda32;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda32;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda34;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda34;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda35;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda35;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "error"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 654
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda50;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda50;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda51;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda51;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda52;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda52;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "error_container"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 54
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method public inverseOnSurface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 297
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda18;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda19;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda19;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda20;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda20;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4026000000000000L    # 11.0

    const-wide/high16 v13, 0x4035000000000000L    # 21.0

    const-wide/high16 v7, 0x4012000000000000L    # 4.5

    const-wide/high16 v9, 0x401c000000000000L    # 7.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "inverse_on_surface"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public inversePrimary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 455
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda115;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda115;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda116;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda116;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda117;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda117;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "inverse_primary"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 284
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda42;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda42;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda43;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda43;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "inverse_surface"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method synthetic lambda$error$93$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 636
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$errorContainer$99$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 663
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$inverseOnSurface$41$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 302
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$inversePrimary$66$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 460
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onBackground$14$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onError$96$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 646
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onErrorContainer$102$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 678
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onPrimary$57$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 404
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onPrimaryContainer$62$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 4

    .line 438
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 441
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 444
    :cond_2
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_3

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_1

    :cond_3
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onPrimaryContainer$63$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 447
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onPrimaryFixed$111$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 719
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onPrimaryFixed$112$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 720
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onPrimaryFixedVariant$115$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 732
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onPrimaryFixedVariant$116$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 733
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onSecondary$72$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 493
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onSecondaryContainer$77$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 4

    .line 529
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    const-wide v1, 0x4056800000000000L    # 90.0

    if-eqz v0, :cond_1

    .line 530
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 532
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 533
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 535
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onSecondaryContainer$78$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 538
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onSecondaryFixed$125$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 775
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onSecondaryFixed$126$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 776
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onSecondaryFixedVariant$129$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 788
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onSecondaryFixedVariant$130$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 789
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onTertiary$84$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 575
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onTertiaryContainer$89$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 4

    .line 610
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 613
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 614
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_2

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 616
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onTertiaryContainer$90$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 619
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onTertiaryFixed$139$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 831
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onTertiaryFixed$140$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 832
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onTertiaryFixedVariant$143$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 844
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onTertiaryFixedVariant$144$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 845
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$primary$54$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 389
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$primaryContainer$59$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 416
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 419
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_1

    const-wide v0, 0x4055400000000000L    # 85.0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 422
    :cond_2
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_3

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_1

    :cond_3
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$primaryContainer$60$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 429
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$primaryFixed$105$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 695
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$primaryFixedDim$108$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 709
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$secondary$69$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 477
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$secondaryContainer$74$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 12

    .line 505
    iget-boolean v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    if-eqz v0, :cond_0

    move-wide v9, v1

    goto :goto_0

    :cond_0
    const-wide v3, 0x4056800000000000L    # 90.0

    move-wide v9, v3

    .line 506
    :goto_0
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide v1, 0x4055400000000000L    # 85.0

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 509
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 512
    :cond_3
    iget-object v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 513
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getHue()D

    move-result-wide v5

    iget-object v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getChroma()D

    move-result-wide v7

    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    xor-int/lit8 v11, p1, 0x1

    .line 512
    invoke-static/range {v5 .. v11}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->findDesiredChromaByTone(DDDZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$secondaryContainer$75$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 520
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$secondaryFixed$119$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 749
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 750
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$secondaryFixedDim$122$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 764
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 765
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$tertiary$81$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 560
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$tertiaryContainer$86$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 3

    .line 587
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4048800000000000L    # 49.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 590
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 591
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_2

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_1

    :cond_2
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 593
    :cond_3
    iget-object v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    iget-object p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->getHct(D)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p1

    .line 594
    invoke-static {p1}, Lcom/google/android/material/color/utilities/DislikeAnalyzer;->fixIfDisliked(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$tertiaryContainer$87$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 601
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$tertiaryFixed$133$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 805
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 806
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method synthetic lambda$tertiaryFixedDim$136$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 820
    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 821
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object v0
.end method

.method public neutralPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    .line 84
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda11;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda22;-><init>()V

    const-string v2, "neutral_palette_key_color"

    invoke-static {v2, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public neutralVariantPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    .line 92
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda144;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda144;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda145;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda145;-><init>()V

    const-string v2, "neutral_variant_palette_key_color"

    invoke-static {v2, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onBackground()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 113
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda104;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda104;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda105;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda105;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda106;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda106;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "on_background"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public onError()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 641
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda130;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda130;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda131;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda131;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda132;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda132;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4026000000000000L    # 11.0

    const-wide/high16 v13, 0x4035000000000000L    # 21.0

    const-wide/high16 v7, 0x4012000000000000L    # 4.5

    const-wide/high16 v9, 0x401c000000000000L    # 7.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "on_error"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public onErrorContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 668
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda45;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda45;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda46;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda46;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda47;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda47;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    const-wide/high16 v13, 0x4026000000000000L    # 11.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "on_error_container"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public onPrimary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 394
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda112;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda112;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda113;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda113;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda114;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda114;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4026000000000000L    # 11.0

    const-wide/high16 v13, 0x4035000000000000L    # 21.0

    const-wide/high16 v7, 0x4012000000000000L    # 4.5

    const-wide/high16 v9, 0x401c000000000000L    # 7.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "on_primary"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public onPrimaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 434
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda135;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda135;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda136;

    invoke-direct {v3, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda136;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda137;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda137;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    const-wide/high16 v13, 0x4026000000000000L    # 11.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "on_primary_container"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public onPrimaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 17

    move-object/from16 v0, p0

    .line 714
    new-instance v1, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda28;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda28;-><init>()V

    new-instance v4, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda29;

    invoke-direct {v4}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda29;-><init>()V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda30;

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda30;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v7, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda31;

    invoke-direct {v7, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda31;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v13, 0x4026000000000000L    # 11.0

    const-wide/high16 v15, 0x4035000000000000L    # 21.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    invoke-direct/range {v8 .. v16}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v9, 0x0

    const-string v2, "on_primary_fixed"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v1
.end method

.method public onPrimaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 17

    move-object/from16 v0, p0

    .line 727
    new-instance v1, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda122;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda122;-><init>()V

    new-instance v4, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda123;

    invoke-direct {v4}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda123;-><init>()V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda124;

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda124;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v7, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda125;

    invoke-direct {v7, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda125;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    invoke-direct/range {v8 .. v16}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v9, 0x0

    const-string v2, "on_primary_fixed_variant"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v1
.end method

.method public onSecondary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 482
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4026000000000000L    # 11.0

    const-wide/high16 v13, 0x4035000000000000L    # 21.0

    const-wide/high16 v7, 0x4012000000000000L    # 4.5

    const-wide/high16 v9, 0x401c000000000000L    # 7.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "on_secondary"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public onSecondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 525
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda25;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda25;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda26;

    invoke-direct {v3, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda26;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda27;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda27;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    const-wide/high16 v13, 0x4026000000000000L    # 11.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "on_secondary_container"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public onSecondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 17

    move-object/from16 v0, p0

    .line 770
    new-instance v1, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda14;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda14;-><init>()V

    new-instance v4, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda15;

    invoke-direct {v4}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda15;-><init>()V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda16;

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda16;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v7, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda17;

    invoke-direct {v7, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda17;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v13, 0x4026000000000000L    # 11.0

    const-wide/high16 v15, 0x4035000000000000L    # 21.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    invoke-direct/range {v8 .. v16}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v9, 0x0

    const-string v2, "on_secondary_fixed"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v1
.end method

.method public onSecondaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 17

    move-object/from16 v0, p0

    .line 783
    new-instance v1, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda62;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda62;-><init>()V

    new-instance v4, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda63;

    invoke-direct {v4}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda63;-><init>()V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda64;

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda64;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v7, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda65;

    invoke-direct {v7, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda65;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    invoke-direct/range {v8 .. v16}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v9, 0x0

    const-string v2, "on_secondary_fixed_variant"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v1
.end method

.method public onSurface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 245
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda140;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda140;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda151;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda151;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4026000000000000L    # 11.0

    const-wide/high16 v13, 0x4035000000000000L    # 21.0

    const-wide/high16 v7, 0x4012000000000000L    # 4.5

    const-wide/high16 v9, 0x401c000000000000L    # 7.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "on_surface"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public onSurfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 271
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda40;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda40;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda41;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda41;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    const-wide/high16 v13, 0x4026000000000000L    # 11.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "on_surface_variant"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public onTertiary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 565
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda107;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda107;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda118;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda118;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda129;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda129;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4026000000000000L    # 11.0

    const-wide/high16 v13, 0x4035000000000000L    # 21.0

    const-wide/high16 v7, 0x4012000000000000L    # 4.5

    const-wide/high16 v9, 0x401c000000000000L    # 7.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "on_tertiary"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public onTertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 606
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda21;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda21;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda23;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda24;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda24;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    const-wide/high16 v13, 0x4026000000000000L    # 11.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "on_tertiary_container"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public onTertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 17

    move-object/from16 v0, p0

    .line 826
    new-instance v1, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda87;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda87;-><init>()V

    new-instance v4, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda88;

    invoke-direct {v4}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda88;-><init>()V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda89;

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda89;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v7, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda90;

    invoke-direct {v7, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda90;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v13, 0x4026000000000000L    # 11.0

    const-wide/high16 v15, 0x4035000000000000L    # 21.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    invoke-direct/range {v8 .. v16}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v9, 0x0

    const-string v2, "on_tertiary_fixed"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v1
.end method

.method public onTertiaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 17

    move-object/from16 v0, p0

    .line 839
    new-instance v1, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>()V

    new-instance v4, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda76;

    invoke-direct {v4}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda76;-><init>()V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda77;

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda77;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v7, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda78;

    invoke-direct {v7, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda78;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v8, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    invoke-direct/range {v8 .. v16}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v9, 0x0

    const-string v2, "on_tertiary_fixed_variant"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v1
.end method

.method public outline()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 310
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda10;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "outline"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public outlineVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 323
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda108;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda108;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda109;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda109;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "outline_variant"

    const/4 v4, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public primary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 375
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda57;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda57;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda58;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda58;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda59;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda59;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "primary"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 412
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda97;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda97;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda98;

    invoke-direct {v3, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda98;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda99;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda99;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "primary_container"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 686
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda153;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda153;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda154;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda154;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda155;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda155;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "primary_fixed"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 700
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda156;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda156;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda157;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda157;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda158;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda158;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "primary_fixed_dim"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public primaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    .line 60
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda72;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda73;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda73;-><init>()V

    const-string v2, "primary_palette_key_color"

    invoke-static {v2, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public scrim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 349
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda60;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda60;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda61;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda61;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "scrim"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public secondary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 468
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "secondary"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 501
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda83;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda83;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda84;

    invoke-direct {v3, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda84;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda86;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda86;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "secondary_container"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 740
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda119;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda119;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda120;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda120;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda121;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda121;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "secondary_fixed"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 755
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda138;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda138;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda139;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda139;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda141;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda141;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "secondary_fixed_dim"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public secondaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    .line 68
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda79;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda80;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda80;-><init>()V

    const-string v2, "secondary_palette_key_color"

    invoke-static {v2, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public shadow()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 336
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda148;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda148;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda149;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda149;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "shadow"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public surface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 126
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda74;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda74;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "surface"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public surfaceBright()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 153
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda110;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda110;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda111;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda111;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "surface_bright"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public surfaceContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 197
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda38;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda38;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda39;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda39;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "surface_container"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public surfaceContainerHigh()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 213
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda102;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda102;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda103;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda103;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "surface_container_high"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public surfaceContainerHighest()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 229
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda150;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda150;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda152;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda152;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "surface_container_highest"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public surfaceContainerLow()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 181
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda81;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda81;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda82;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda82;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "surface_container_low"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public surfaceContainerLowest()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 167
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda8;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "surface_container_lowest"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public surfaceDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 139
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda33;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda33;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda44;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda44;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "surface_dim"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public surfaceTint()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 362
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda12;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda13;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "surface_tint"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public surfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 258
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda142;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda142;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda143;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda143;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "surface_variant"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public tertiary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 546
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda67;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda67;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda68;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda68;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda69;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda69;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "tertiary"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 583
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda159;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda159;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda160;

    invoke-direct {v3, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda160;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda161;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda161;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "tertiary_container"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 796
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda53;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda53;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda54;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda54;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda56;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda56;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "tertiary_fixed"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 811
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda126;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda126;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda127;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda127;-><init>()V

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v5, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda128;

    invoke-direct {v8, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda128;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const-string v1, "tertiary_fixed_dim"

    const/4 v4, 0x1

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public tertiaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    .line 76
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda91;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda91;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda92;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda92;-><init>()V

    const-string v2, "tertiary_palette_key_color"

    invoke-static {v2, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public textHintInverse()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    .line 939
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda146;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda146;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda147;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda147;-><init>()V

    const-string v2, "text_hint_inverse"

    invoke-static {v2, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public textPrimaryInverse()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    .line 903
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda36;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda37;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda37;-><init>()V

    const-string v2, "text_primary_inverse"

    invoke-static {v2, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public textPrimaryInverseDisableOnly()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    .line 920
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda133;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda133;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda134;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda134;-><init>()V

    const-string v2, "text_primary_inverse_disable_only"

    invoke-static {v2, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public textSecondaryAndTertiaryInverse()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    .line 911
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda48;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda49;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda49;-><init>()V

    const-string v2, "text_secondary_and_tertiary_inverse"

    invoke-static {v2, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public textSecondaryAndTertiaryInverseDisabled()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    .line 930
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda96;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda96;-><init>()V

    const-string v2, "text_secondary_and_tertiary_inverse_disabled"

    invoke-static {v2, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method
