.class public Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "DockedToolbarLayout.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final TAG:Ljava/lang/String; = "DockedToolbarLayout"


# instance fields
.field private paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

.field private paddingTopSystemWindowInsets:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_DockedToolbar:I

    sput v0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    sget v0, Lcom/google/android/material/R$attr;->dockedToolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 70
    sget v0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->DEF_STYLE_RES:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 78
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    sget-object v2, Lcom/google/android/material/R$styleable;->DockedToolbar:[I

    const/4 p1, 0x0

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 85
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 89
    sget p3, Lcom/google/android/material/R$styleable;->DockedToolbar_backgroundTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 91
    sget p3, Lcom/google/android/material/R$styleable;->DockedToolbar_backgroundTint:I

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result p1

    .line 94
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p3

    .line 95
    new-instance p4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p4, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 96
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 98
    invoke-virtual {p0, p4}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_0
    sget p1, Lcom/google/android/material/R$styleable;->DockedToolbar_paddingTopSystemWindowInsets:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    .line 103
    sget p1, Lcom/google/android/material/R$styleable;->DockedToolbar_paddingTopSystemWindowInsets:I

    .line 104
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    .line 106
    :cond_1
    sget p1, Lcom/google/android/material/R$styleable;->DockedToolbar_paddingBottomSystemWindowInsets:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    sget p1, Lcom/google/android/material/R$styleable;->DockedToolbar_paddingBottomSystemWindowInsets:I

    .line 108
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    .line 111
    :cond_2
    new-instance p1, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout$1;-><init>(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)V

    invoke-static {p0, p1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 163
    invoke-virtual {p0, p3}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->setImportantForAccessibility(I)V

    .line 164
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;Landroid/view/ViewGroup$LayoutParams;I)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->hasGravity(Landroid/view/ViewGroup$LayoutParams;I)Z

    move-result p0

    return p0
.end method

.method private hasGravity(Landroid/view/ViewGroup$LayoutParams;I)Z
    .locals 3

    .line 168
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 169
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    return v1

    :cond_0
    return v2

    .line 170
    :cond_1
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 171
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_2

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .line 178
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 179
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p2, v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->getChildCount()I

    move-result p2

    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->getMeasuredHeight()I

    move-result v1

    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 182
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 188
    invoke-virtual {p0, v2}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 190
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 187
    invoke-virtual {p0, v3, p1, v4}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/dockedtoolbar/DockedToolbarLayout;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method
