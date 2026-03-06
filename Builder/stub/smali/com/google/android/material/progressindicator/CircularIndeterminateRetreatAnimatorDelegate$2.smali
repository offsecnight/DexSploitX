.class Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularIndeterminateRetreatAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->maybeInitializeAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 129
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->cancelAnimatorImmediately()V

    .line 130
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1, v0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
