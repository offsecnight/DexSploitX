.class final enum Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;
.super Ljava/lang/Enum;
.source "CarouselStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/CarouselStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StrategyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

.field public static final enum CONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

.field public static final enum UNCONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;


# direct methods
.method private static synthetic $values()[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;
    .locals 2

    .line 40
    sget-object v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->CONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    sget-object v1, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->UNCONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    filled-new-array {v0, v1}, [Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    const-string v1, "CONTAINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->CONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    .line 42
    new-instance v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    const-string v1, "UNCONTAINED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->UNCONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    .line 40
    invoke-static {}, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->$values()[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->$VALUES:[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    const-class v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->$VALUES:[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    invoke-virtual {v0}, [Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    return-object v0
.end method
