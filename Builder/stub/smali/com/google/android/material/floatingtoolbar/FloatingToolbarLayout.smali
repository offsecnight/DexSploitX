.class public Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "FloatingToolbarLayout.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final TAG:Ljava/lang/String; = "FloatingToolbarLayout"


# instance fields
.field private bottomMarginWindowInset:I

.field private leftMarginWindowInset:I

.field private marginBottomSystemWindowInsets:Z

.field private marginLeftSystemWindowInsets:Z

.field private marginRightSystemWindowInsets:Z

.field private marginTopSystemWindowInsets:Z

.field private originalMargins:Landroid/graphics/Rect;

.field private rightMarginWindowInset:I

.field private topMarginWindowInset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_FloatingToolbar:I

    sput v0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 74
    sget v0, Lcom/google/android/material/R$attr;->floatingToolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 79
    sget v0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->DEF_STYLE_RES:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 87
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    sget-object v2, Lcom/google/android/material/R$styleable;->FloatingToolbar:[I

    const/4 p1, 0x0

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 94
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 98
    sget p3, Lcom/google/android/material/R$styleable;->FloatingToolbar_backgroundTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 100
    sget p3, Lcom/google/android/material/R$styleable;->FloatingToolbar_backgroundTint:I

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result p3

    .line 103
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p4

    .line 104
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 105
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_0
    sget p3, Lcom/google/android/material/R$styleable;->FloatingToolbar_marginLeftSystemWindowInsets:I

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->marginLeftSystemWindowInsets:Z

    .line 113
    sget p3, Lcom/google/android/material/R$styleable;->FloatingToolbar_marginTopSystemWindowInsets:I

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->marginTopSystemWindowInsets:Z

    .line 114
    sget p1, Lcom/google/android/material/R$styleable;->FloatingToolbar_marginRightSystemWindowInsets:I

    invoke-virtual {p2, p1, p4}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->marginRightSystemWindowInsets:Z

    .line 115
    sget p1, Lcom/google/android/material/R$styleable;->FloatingToolbar_marginBottomSystemWindowInsets:I

    invoke-virtual {p2, p1, p4}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->marginBottomSystemWindowInsets:Z

    .line 117
    new-instance p1, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout$1;-><init>(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 146
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->marginLeftSystemWindowInsets:Z

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->marginRightSystemWindowInsets:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->marginTopSystemWindowInsets:Z

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->marginBottomSystemWindowInsets:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->bottomMarginWindowInset:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->topMarginWindowInset:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->rightMarginWindowInset:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->leftMarginWindowInset:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->updateMargins()V

    return-void
.end method

.method private updateMargins()V
    .locals 7

    .line 150
    invoke-virtual {p0}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->originalMargins:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 152
    sget-object v0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->TAG:Ljava/lang/String;

    const-string v1, "Unable to update margins because original view margins are not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 156
    :cond_0
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 157
    iget-boolean v2, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->marginLeftSystemWindowInsets:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->leftMarginWindowInset:I

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    .line 158
    iget-object v2, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->originalMargins:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 159
    iget-boolean v4, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->marginRightSystemWindowInsets:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->rightMarginWindowInset:I

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    add-int/2addr v2, v4

    .line 160
    iget-object v4, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->originalMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 161
    iget-boolean v5, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->marginTopSystemWindowInsets:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->topMarginWindowInset:I

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    add-int/2addr v4, v5

    .line 162
    iget-object v5, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->originalMargins:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 163
    iget-boolean v6, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->marginBottomSystemWindowInsets:Z

    if-eqz v6, :cond_4

    iget v3, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->bottomMarginWindowInset:I

    :cond_4
    add-int/2addr v5, v3

    .line 165
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 166
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v3, v5, :cond_6

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v3, v1, :cond_6

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v3, v2, :cond_6

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v3, v4, :cond_5

    goto :goto_3

    :cond_5
    return-void

    .line 172
    :cond_6
    :goto_3
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 173
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 174
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 175
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 176
    invoke-virtual {p0}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 184
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->originalMargins:Landroid/graphics/Rect;

    .line 191
    invoke-direct {p0}, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->updateMargins()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lcom/google/android/material/floatingtoolbar/FloatingToolbarLayout;->originalMargins:Landroid/graphics/Rect;

    return-void
.end method
