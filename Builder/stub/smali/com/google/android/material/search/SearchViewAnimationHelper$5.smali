.class Lcom/google/android/material/search/SearchViewAnimationHelper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchViewAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchViewAnimationHelper;->getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iput-boolean p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 305
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->val$show:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$200(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V

    .line 308
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setAlpha(F)V

    .line 309
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClipBounds(Landroid/graphics/Rect;)V

    .line 317
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->resetClipBoundsAndCornerRadii()V

    .line 321
    iget-boolean p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->val$show:Z

    if-nez p1, :cond_2

    .line 322
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->clearExpandedCornerRadii()V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 300
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget-boolean v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$5;->val$show:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$200(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V

    return-void
.end method
