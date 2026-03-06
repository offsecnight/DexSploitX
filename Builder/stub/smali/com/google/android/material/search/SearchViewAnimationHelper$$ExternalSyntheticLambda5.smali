.class public final synthetic Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/search/SearchViewAnimationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->lambda$addTextFadeAnimatorIfNeeded$7$com-google-android-material-search-SearchViewAnimationHelper(Landroid/animation/ValueAnimator;)V

    return-void
.end method
