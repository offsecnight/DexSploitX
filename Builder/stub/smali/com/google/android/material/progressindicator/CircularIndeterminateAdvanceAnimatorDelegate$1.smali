.class Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$1;
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

    .line 94
    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 98
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;

    .line 99
    invoke-static {p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->access$000(Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;

    invoke-static {v1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->access$100(Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 98
    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;->access$002(Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;I)I

    return-void
.end method
