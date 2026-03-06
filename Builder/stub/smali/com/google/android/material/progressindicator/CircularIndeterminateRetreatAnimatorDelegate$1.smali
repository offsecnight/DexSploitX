.class Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$1;
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

    .line 109
    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 113
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;

    .line 114
    invoke-static {p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->access$000(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;)I

    move-result v0

    invoke-static {}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->access$100()[I

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;

    .line 115
    invoke-static {v1}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->access$200(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 113
    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->access$002(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;I)I

    return-void
.end method
