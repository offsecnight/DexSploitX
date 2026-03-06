.class Lcom/google/android/material/badge/BadgeUtils$2;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "BadgeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/badge/BadgeUtils;->attachBadgeContentDescription(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;Lcom/google/android/material/badge/BadgeDrawable;)V
    .locals 0

    .line 147
    iput-object p2, p0, Lcom/google/android/material/badge/BadgeUtils$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/badge/BadgeUtils$2;->val$badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {p0, p1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 151
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 152
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeUtils$2;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeUtils$2;->val$badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-static {p1, v0}, Lcom/google/android/material/badge/BadgeUtils;->access$100(Landroid/view/View;Lcom/google/android/material/badge/BadgeDrawable;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
