.class Lcom/google/android/material/navigation/NavigationBarItemView$1;
.super Ljava/lang/Object;
.source "NavigationBarItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationBarItemView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigation/NavigationBarItemView;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 503
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$1;->this$0:Lcom/google/android/material/navigation/NavigationBarItemView;

    iput p2, p0, Lcom/google/android/material/navigation/NavigationBarItemView$1;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView$1;->this$0:Lcom/google/android/material/navigation/NavigationBarItemView;

    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$1;->val$width:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    return-void
.end method
