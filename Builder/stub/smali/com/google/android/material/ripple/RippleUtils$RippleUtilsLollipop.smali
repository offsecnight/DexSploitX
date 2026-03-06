.class Lcom/google/android/material/ripple/RippleUtils$RippleUtilsLollipop;
.super Ljava/lang/Object;
.source "RippleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/ripple/RippleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RippleUtilsLollipop"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 218
    invoke-static {p0, p1}, Lcom/google/android/material/ripple/RippleUtils$RippleUtilsLollipop;->createOvalRipple(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static createOvalRipple(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 223
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, -0x1

    .line 224
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v0, 0x1

    .line 225
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 226
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move v3, p1

    move v4, p1

    move v5, p1

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 228
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    sget v1, Landroidx/appcompat/R$attr;->colorControlHighlight:I

    const/4 v2, 0x0

    .line 232
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 229
    invoke-static {p0, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method
