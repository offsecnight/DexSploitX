.class Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$2;
.super Landroid/util/Property;
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
        "Landroid/util/Property<",
        "Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)Ljava/lang/Float;
    .locals 0

    .line 196
    invoke-static {p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->access$200(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 193
    check-cast p1, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    invoke-virtual {p0, p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$2;->get(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;Ljava/lang/Float;)V
    .locals 0

    .line 201
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->setAnimationFraction(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
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

    .line 193
    check-cast p1, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$2;->set(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;Ljava/lang/Float;)V

    return-void
.end method
