.class public Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;
.super Ljava/lang/Object;
.source "MaterialThemeOverlay.java"


# static fields
.field private static final ANDROID_THEME_OVERLAY_ATTRS:[I

.field private static final MATERIAL_THEME_OVERLAY_ATTR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x1010000

    .line 47
    sget v1, Landroidx/appcompat/R$attr;->theme:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    .line 50
    sget v0, Lcom/google/android/material/R$attr;->materialThemeOverlay:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 2

    .line 128
    sget-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v1, 0x1

    .line 130
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 131
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method private static obtainMaterialOverlayIds(Landroid/content/Context;Landroid/util/AttributeSet;[III)[I
    .locals 2

    .line 162
    array-length v0, p2

    new-array v0, v0, [I

    .line 163
    array-length v1, p2

    if-lez v1, :cond_1

    .line 164
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    move p3, p1

    .line 165
    :goto_0
    array-length p4, p2

    if-ge p3, p4, :cond_0

    .line 166
    invoke-virtual {p0, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    aput p4, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-object v0
.end method

.method private static obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .locals 1

    .line 146
    sget-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainMaterialOverlayIds(Landroid/content/Context;Landroid/util/AttributeSet;[III)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0
.end method

.method public static wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    .line 66
    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II[I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Landroid/content/Context;Landroid/util/AttributeSet;II[I)Landroid/content/Context;
    .locals 4

    .line 92
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v0

    .line 93
    instance-of v1, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 95
    invoke-virtual {v1}, Landroidx/appcompat/view/ContextThemeWrapper;->getThemeResId()I

    move-result v1

    if-ne v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v0, :cond_5

    if-eqz v1, :cond_1

    goto :goto_2

    .line 101
    :cond_1
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 104
    invoke-static {p0, p1, p4, p2, p3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainMaterialOverlayIds(Landroid/content/Context;Landroid/util/AttributeSet;[III)[I

    move-result-object p2

    .line 105
    array-length p3, p2

    :goto_1
    if-ge v2, p3, :cond_3

    aget p4, p2, v2

    if-eqz p4, :cond_2

    .line 107
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result p0

    if-eqz p0, :cond_4

    .line 115
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, p0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    return-object p0
.end method
