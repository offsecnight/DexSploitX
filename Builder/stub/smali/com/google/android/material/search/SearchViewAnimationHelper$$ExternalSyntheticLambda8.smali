.class public final synthetic Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda8;->f$0:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda8;->f$0:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->lambda$addBackButtonAnimatorIfNeeded$3(Landroid/widget/ImageButton;Landroid/animation/ValueAnimator;)V

    return-void
.end method
