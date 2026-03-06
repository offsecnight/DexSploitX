.class public final Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;
.super Ljava/lang/Object;
.source "LoadingIndicatorSpec.java"


# instance fields
.field containerColor:I

.field containerHeight:I

.field containerWidth:I

.field indicatorColors:[I

.field indicatorSize:I

.field scaleToFit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 48
    sget v0, Lcom/google/android/material/R$attr;->loadingIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 53
    sget v0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->DEF_STYLE_RES:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->scaleToFit:Z

    .line 44
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorColors:[I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->m3_loading_indicator_shape_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->m3_loading_indicator_container_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 71
    sget-object v5, Lcom/google/android/material/R$styleable;->LoadingIndicator:[I

    new-array v8, v0, [I

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    .line 72
    invoke-static/range {v3 .. v8}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    sget p2, Lcom/google/android/material/R$styleable;->LoadingIndicator_indicatorSize:I

    .line 75
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorSize:I

    .line 76
    sget p2, Lcom/google/android/material/R$styleable;->LoadingIndicator_containerWidth:I

    .line 77
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerWidth:I

    .line 78
    sget p2, Lcom/google/android/material/R$styleable;->LoadingIndicator_containerHeight:I

    .line 79
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerHeight:I

    .line 80
    invoke-direct {p0, v3, p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->loadIndicatorColors(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 81
    sget p2, Lcom/google/android/material/R$styleable;->LoadingIndicator_containerColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerColor:I

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private loadIndicatorColors(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 3

    .line 86
    sget v0, Lcom/google/android/material/R$styleable;->LoadingIndicator_indicatorColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 88
    sget p2, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 90
    invoke-static {p1, p2, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorColors:[I

    return-void

    .line 95
    :cond_0
    sget v0, Lcom/google/android/material/R$styleable;->LoadingIndicator_indicatorColor:I

    .line 96
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 98
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 99
    sget p1, Lcom/google/android/material/R$styleable;->LoadingIndicator_indicatorColor:I

    .line 100
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorColors:[I

    return-void

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$styleable;->LoadingIndicator_indicatorColor:I

    .line 107
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorColors:[I

    .line 108
    array-length p1, p1

    if-eqz p1, :cond_2

    return-void

    .line 109
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "indicatorColors cannot be empty when indicatorColor is not used."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public setScaleToFit(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->scaleToFit:Z

    return-void
.end method
