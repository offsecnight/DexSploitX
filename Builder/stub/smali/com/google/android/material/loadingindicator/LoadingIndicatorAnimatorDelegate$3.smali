.class Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$3;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "LoadingIndicatorAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)F
    .locals 0

    .line 209
    invoke-static {p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->access$300(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 206
    check-cast p1, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    invoke-virtual {p0, p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$3;->getValue(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;F)V
    .locals 0

    .line 214
    invoke-virtual {p1, p2}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->setMorphFactor(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
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

    .line 206
    check-cast p1, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$3;->setValue(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;F)V

    return-void
.end method
