.class Lcom/google/android/material/navigation/NavigationView$3;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1113
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 1116
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$200(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getLocationOnScreen([I)V

    .line 1117
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$200(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1118
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$300(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setBehindStatusBar(Z)V

    .line 1119
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->isTopInsetScrimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/android/material/navigation/NavigationView;->setDrawTopInsetForeground(Z)V

    .line 1121
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 1124
    :goto_2
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$200(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v3

    aget v3, v3, v2

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$200(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v3

    aget v3, v3, v2

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v3, v1

    .line 1125
    :goto_4
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v3, :cond_6

    if-eqz v0, :cond_5

    .line 1126
    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->isEndInsetScrimEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->isStartInsetScrimEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_5
    move v3, v1

    goto :goto_6

    :cond_6
    move v3, v2

    .line 1125
    :goto_6
    invoke-virtual {v4, v3}, Lcom/google/android/material/navigation/NavigationView;->setDrawLeftInsetForeground(Z)V

    .line 1128
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1130
    invoke-static {v3}, Lcom/google/android/material/internal/WindowUtils;->getCurrentWindowBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1132
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v6}, Lcom/google/android/material/navigation/NavigationView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v6}, Lcom/google/android/material/navigation/NavigationView;->access$200(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v6

    aget v6, v6, v1

    if-ne v5, v6, :cond_7

    move v5, v1

    goto :goto_7

    :cond_7
    move v5, v2

    .line 1134
    :goto_7
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    move v3, v2

    .line 1135
    :goto_8
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v5, :cond_9

    if-eqz v3, :cond_9

    .line 1136
    invoke-virtual {v6}, Lcom/google/android/material/navigation/NavigationView;->isBottomInsetScrimEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    move v3, v2

    .line 1135
    :goto_9
    invoke-virtual {v6, v3}, Lcom/google/android/material/navigation/NavigationView;->setDrawBottomInsetForeground(Z)V

    .line 1141
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v5}, Lcom/google/android/material/navigation/NavigationView;->access$200(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v5

    aget v5, v5, v2

    if-eq v3, v5, :cond_b

    .line 1142
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v4}, Lcom/google/android/material/navigation/NavigationView;->access$200(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v4

    aget v4, v4, v2

    if-ne v3, v4, :cond_a

    goto :goto_a

    :cond_a
    move v3, v2

    goto :goto_b

    :cond_b
    :goto_a
    move v3, v1

    .line 1144
    :goto_b
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$3;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v3, :cond_d

    if-eqz v0, :cond_c

    .line 1145
    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->isStartInsetScrimEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_c

    :cond_c
    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->isEndInsetScrimEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_c

    :cond_d
    move v1, v2

    .line 1144
    :goto_c
    invoke-virtual {v4, v1}, Lcom/google/android/material/navigation/NavigationView;->setDrawRightInsetForeground(Z)V

    :cond_e
    return-void
.end method
