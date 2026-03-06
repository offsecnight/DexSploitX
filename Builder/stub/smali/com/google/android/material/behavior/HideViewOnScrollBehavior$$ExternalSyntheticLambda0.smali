.class public final synthetic Lcom/google/android/material/behavior/HideViewOnScrollBehavior$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    iput-object p2, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    iget-object v1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->lambda$disableIfTouchExplorationEnabled$0$com-google-android-material-behavior-HideViewOnScrollBehavior(Landroid/view/View;Z)V

    return-void
.end method
