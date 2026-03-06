.class Lcom/google/android/material/navigationrail/NavigationRailView$1;
.super Ljava/lang/Object;
.source "NavigationRailView.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigationrail/NavigationRailView;->applyWindowInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigationrail/NavigationRailView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigationrail/NavigationRailView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 423
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 424
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 425
    iget-object v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    invoke-static {v2}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$000(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    iget v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iput v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    invoke-static {v2}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$200(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    iget v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    iget v3, v0, Landroidx/core/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    iput v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 431
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    invoke-static {v2}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$300(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 432
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 433
    iget v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    iget v1, v1, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    goto :goto_0

    .line 435
    :cond_2
    iget v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    iget v0, v0, Landroidx/core/graphics/Insets;->left:I

    iget v1, v1, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 438
    :cond_3
    :goto_0
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    return-object p2
.end method
