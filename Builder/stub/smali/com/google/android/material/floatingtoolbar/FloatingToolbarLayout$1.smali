.class Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;
.super Ljava/lang/Object;
.source "FloatingToolbarLayout.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;->this$0:Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;->this$0:Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->access$000(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;->this$0:Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;

    .line 125
    invoke-static {p1}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->access$100(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;->this$0:Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;

    .line 126
    invoke-static {p1}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->access$200(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;->this$0:Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;

    .line 127
    invoke-static {p1}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->access$300(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    .line 132
    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    .line 133
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v0

    or-int/2addr p1, v0

    .line 134
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    or-int/2addr p1, v0

    .line 131
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;->this$0:Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;

    iget v1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v0, v1}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->access$402(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;I)I

    .line 136
    iget-object v0, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;->this$0:Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v0, v1}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->access$502(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;I)I

    .line 137
    iget-object v0, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;->this$0:Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;

    iget v1, p1, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v0, v1}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->access$602(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;I)I

    .line 138
    iget-object v0, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;->this$0:Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;

    iget p1, p1, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v0, p1}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->access$702(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;I)I

    .line 140
    iget-object p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;->this$0:Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->access$800(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;)V

    return-object p2
.end method
