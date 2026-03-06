.class abstract Lcom/google/android/material/behavior/HideViewOnScrollDelegate;
.super Ljava/lang/Object;
.source "HideViewOnScrollDelegate.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getSize(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;",
            "Landroid/view/ViewGroup$MarginLayoutParams;",
            ")I"
        }
    .end annotation
.end method

.method abstract getTargetTranslation()I
.end method

.method abstract getViewEdge()I
.end method

.method abstract getViewTranslationAnimator(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;I)",
            "Landroid/view/ViewPropertyAnimator;"
        }
    .end annotation
.end method

.method abstract setAdditionalHiddenOffset(Landroid/view/View;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;II)V"
        }
    .end annotation
.end method

.method abstract setViewTranslation(Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;I)V"
        }
    .end annotation
.end method
