.class public Lcom/google/android/material/internal/WindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/WindowUtils$Api30Impl;,
        Lcom/google/android/material/internal/WindowUtils$Api17Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentWindowBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    .line 43
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 45
    invoke-static {p0}, Lcom/google/android/material/internal/WindowUtils$Api30Impl;->getCurrentWindowBounds(Landroid/view/WindowManager;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/WindowUtils$Api17Impl;->getCurrentWindowBounds(Landroid/view/WindowManager;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
