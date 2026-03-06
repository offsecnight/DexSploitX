.class public Lcom/google/android/material/badge/BadgeUtils;
.super Ljava/lang/Object;
.source "BadgeUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BadgeUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeContentDescription(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Lcom/google/android/material/badge/BadgeDrawable;)Ljava/lang/CharSequence;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeUtils;->getBadgeAnchorContentDescription(Landroid/view/View;Lcom/google/android/material/badge/BadgeDrawable;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static attachBadgeContentDescription(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
    .locals 2

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/google/android/material/badge/BadgeUtils$2;

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/material/badge/BadgeUtils$2;-><init>(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;Lcom/google/android/material/badge/BadgeDrawable;)V

    .line 145
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/google/android/material/badge/BadgeUtils$3;

    invoke-direct {v0, p1, p0}, Lcom/google/android/material/badge/BadgeUtils$3;-><init>(Landroid/view/View;Lcom/google/android/material/badge/BadgeDrawable;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, p1, v0}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 89
    invoke-static {p0, p1, p2}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;I)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;ILandroid/widget/FrameLayout;)V

    return-void
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;ILandroid/widget/FrameLayout;)V
    .locals 1

    .line 127
    new-instance v0, Lcom/google/android/material/badge/BadgeUtils$1;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/google/android/material/badge/BadgeUtils$1;-><init>(Landroidx/appcompat/widget/Toolbar;ILcom/google/android/material/badge/BadgeDrawable;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static createBadgeDrawablesFromSavedStates(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/internal/ParcelableSparseArray;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/google/android/material/internal/ParcelableSparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 297
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/internal/ParcelableSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 298
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/ParcelableSparseArray;->keyAt(I)I

    move-result v2

    .line 299
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/ParcelableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/badge/BadgeState$State;

    if-eqz v3, :cond_0

    .line 302
    invoke-static {p0, v3}, Lcom/google/android/material/badge/BadgeDrawable;->createFromSavedState(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 304
    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static createParcelableBadgeStates(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;)",
            "Lcom/google/android/material/internal/ParcelableSparseArray;"
        }
    .end annotation

    .line 274
    new-instance v0, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v0}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    const/4 v1, 0x0

    .line 275
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 276
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 277
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v3, :cond_0

    .line 278
    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeDrawable;->getSavedState()Lcom/google/android/material/badge/BadgeState$State;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/internal/ParcelableSparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static detachBadgeContentDescription(Landroid/view/View;)V
    .locals 2

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/google/android/material/badge/BadgeUtils$4;

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/badge/BadgeUtils$4;-><init>(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)V

    .line 217
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 228
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 190
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuItemView(Landroidx/appcompat/widget/Toolbar;I)Landroidx/appcompat/view/menu/ActionMenuItemView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 207
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeUtils;->removeToolbarOffset(Lcom/google/android/material/badge/BadgeDrawable;)V

    .line 208
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    .line 209
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeContentDescription(Landroid/view/View;)V

    return-void

    .line 211
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Trying to remove badge from a null menuItemView: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BadgeUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getBadgeAnchorContentDescription(Landroid/view/View;Lcom/google/android/material/badge/BadgeDrawable;)Ljava/lang/CharSequence;
    .locals 0

    .line 171
    invoke-virtual {p1}, Lcom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static removeToolbarOffset(Lcom/google/android/material/badge/BadgeDrawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalHorizontalOffset(I)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalVerticalOffset(I)V

    return-void
.end method

.method public static setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 258
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static setToolbarOffset(Lcom/google/android/material/badge/BadgeDrawable;Landroid/content/res/Resources;)V
    .locals 1

    .line 234
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_badge_toolbar_action_menu_item_horizontal_offset:I

    .line 235
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 234
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalHorizontalOffset(I)V

    .line 237
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_badge_toolbar_action_menu_item_vertical_offset:I

    .line 238
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalVerticalOffset(I)V

    return-void
.end method

.method public static updateBadgeBounds(Landroid/graphics/Rect;FFFF)V
    .locals 2

    sub-float v0, p1, p3

    float-to-int v0, v0

    sub-float v1, p2, p4

    float-to-int v1, v1

    add-float/2addr p1, p3

    float-to-int p1, p1

    add-float/2addr p2, p4

    float-to-int p2, p2

    .line 67
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
