.class public final enum Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;
.super Ljava/lang/Enum;
.source "StateListSizeChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/StateListSizeChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizeChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

.field public static final enum PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

.field public static final enum PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;


# direct methods
.method private static synthetic $values()[Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;
    .locals 2

    .line 261
    sget-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    sget-object v1, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    filled-new-array {v0, v1}, [Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 262
    new-instance v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    const-string v1, "PERCENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    .line 263
    new-instance v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    const-string v1, "PIXELS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    .line 261
    invoke-static {}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->$values()[Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->$VALUES:[Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

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

    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 261
    const-class v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;
    .locals 1

    .line 261
    sget-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->$VALUES:[Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    invoke-virtual {v0}, [Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    return-object v0
.end method
