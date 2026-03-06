.class Lcom/google/android/material/behavior/HideViewOnScrollBehavior$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HideViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$2;->this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 418
    iget-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$2;->this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->access$202(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
