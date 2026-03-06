.class public Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;
.super Ljava/lang/Object;
.source "StateListSizeChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/StateListSizeChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeChangeAmount"
.end annotation


# instance fields
.field amount:F

.field type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;F)V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    .line 246
    iput p2, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    return-void
.end method


# virtual methods
.method public getChange(I)I
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    sget-object v1, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    if-ne v0, v1, :cond_0

    .line 251
    iget v0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    sget-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    if-ne p1, v0, :cond_1

    .line 254
    iget p1, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    float-to-int p1, p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
