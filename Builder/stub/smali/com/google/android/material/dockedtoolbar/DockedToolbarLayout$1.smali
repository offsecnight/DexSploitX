.class Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;
.super Ljava/lang/Object;
.source "DockedToolbarLayout.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 7

    .line 120
    iget-object v0, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    invoke-static {v0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->access$000(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    .line 121
    invoke-static {v0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->access$100(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    .line 122
    invoke-static {v0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->access$000(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    .line 123
    invoke-static {v0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->access$100(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 128
    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    .line 129
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    .line 130
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    or-int/2addr v0, v1

    .line 127
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 131
    iget v1, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 132
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 140
    iget-object v3, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    const/16 v4, 0x30

    invoke-static {v3, v2, v4}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->access$200(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;Landroid/view/ViewGroup$LayoutParams;I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    invoke-static {v3}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->access$000(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    invoke-virtual {v3}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->getFitsSystemWindows()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v4

    .line 143
    :goto_0
    iget-object v5, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    const/16 v6, 0x50

    invoke-static {v5, v2, v6}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->access$200(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;Landroid/view/ViewGroup$LayoutParams;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    invoke-static {v2}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->access$100(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    invoke-virtual {v2}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->getFitsSystemWindows()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v4

    .line 149
    :goto_1
    iget-object v5, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    invoke-static {v5}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->access$100(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 150
    iget-object v2, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    invoke-static {v2}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->access$100(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    move v2, v1

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    invoke-static {v1}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->access$000(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 153
    iget-object v1, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;->this$0:Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;

    invoke-static {v1}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->access$000(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    move v3, v0

    .line 155
    :cond_6
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    add-int/2addr v0, v3

    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 156
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    add-int/2addr v0, v2

    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 157
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    return-object p2
.end method
