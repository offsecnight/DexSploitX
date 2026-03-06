.class synthetic Lcom/google/android/material/carousel/KeylineStateList$1;
.super Ljava/lang/Object;
.source "KeylineStateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/KeylineStateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$material$carousel$CarouselStrategy$StrategyType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 385
    invoke-static {}, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->values()[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/material/carousel/KeylineStateList$1;->$SwitchMap$com$google$android$material$carousel$CarouselStrategy$StrategyType:[I

    :try_start_0
    sget-object v1, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->CONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    invoke-virtual {v1}, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
