.class public final Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderResourceEntry"
.end annotation


# instance fields
.field private final mFallbackRequest:Landroidx/core/provider/FontRequest;

.field private final mRequest:Landroidx/core/provider/FontRequest;

.field private final mStrategy:I

.field private final mSystemFontFamilyName:Ljava/lang/String;

.field private final mTimeoutMs:I


# direct methods
.method public constructor <init>(Landroidx/core/provider/FontRequest;II)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 97
    invoke-direct/range {v0 .. v5}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;-><init>(Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontRequest;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontRequest;IILjava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Landroidx/core/provider/FontRequest;

    .line 89
    iput-object p2, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mFallbackRequest:Landroidx/core/provider/FontRequest;

    .line 90
    iput p3, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    .line 91
    iput p4, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    .line 92
    iput-object p5, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mSystemFontFamilyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFallbackRequest()Landroidx/core/provider/FontRequest;
    .locals 1

    .line 105
    iget-object v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mFallbackRequest:Landroidx/core/provider/FontRequest;

    return-object v0
.end method

.method public getFetchStrategy()I
    .locals 1

    .line 109
    iget v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    return v0
.end method

.method public getRequest()Landroidx/core/provider/FontRequest;
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Landroidx/core/provider/FontRequest;

    return-object v0
.end method

.method public getSystemFontFamilyName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mSystemFontFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 113
    iget v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    return v0
.end method
