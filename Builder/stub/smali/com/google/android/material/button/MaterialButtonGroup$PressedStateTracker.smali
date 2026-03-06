.class Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;
.super Ljava/lang/Object;
.source "MaterialButtonGroup.java"

# interfaces
.implements Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PressedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/button/MaterialButtonGroup;


# direct methods
.method private constructor <init>(Lcom/google/android/material/button/MaterialButtonGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 796
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;->this$0:Lcom/google/android/material/button/MaterialButtonGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/button/MaterialButtonGroup;Lcom/google/android/material/button/MaterialButtonGroup$1;)V
    .locals 0

    .line 796
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonGroup;)V

    return-void
.end method


# virtual methods
.method public onPressedChanged(Lcom/google/android/material/button/MaterialButton;Z)V
    .locals 0

    .line 799
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;->this$0:Lcom/google/android/material/button/MaterialButtonGroup;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButtonGroup;->invalidate()V

    return-void
.end method
