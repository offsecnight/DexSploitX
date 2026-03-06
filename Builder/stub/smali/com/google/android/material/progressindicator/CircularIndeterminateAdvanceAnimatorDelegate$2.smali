.class Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularIndeterminateAdvanceAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->maybeInitializeAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;)V
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
    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 114
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->cancelAnimatorImmediately()V

    .line 115
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1, v0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
