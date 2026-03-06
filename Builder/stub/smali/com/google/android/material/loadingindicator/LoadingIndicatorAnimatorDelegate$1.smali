.class Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LoadingIndicatorAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->maybeInitializeAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$1;->this$0:Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 114
    iget-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$1;->this$0:Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    invoke-static {p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->access$100(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate$1;->this$0:Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    invoke-static {v0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->access$004(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method
