.class public final Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.source "LinearProgressIndicatorSpec.java"


# instance fields
.field drawHorizontallyInverse:Z

.field public hasInnerCornerRadius:Z

.field public indeterminateAnimationType:I

.field public indicatorDirection:I

.field public trackInnerCornerRadius:I

.field public trackInnerCornerRadiusFraction:F

.field public trackStopIndicatorPadding:Ljava/lang/Integer;

.field public trackStopIndicatorSize:I

.field public useRelativeTrackInnerCornerRadius:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 74
    sget v0, Lcom/google/android/material/R$attr;->linearProgressIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 79
    sget v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->DEF_STYLE_RES:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 89
    sget-object v2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator:[I

    sget v3, Lcom/google/android/material/R$attr;->linearProgressIndicatorStyle:I

    sget v4, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->DEF_STYLE_RES:I

    const/4 p3, 0x0

    new-array v5, p3, [I

    move-object v0, p1

    move-object v1, p2

    .line 90
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 96
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_indeterminateAnimationType:I

    const/4 p4, 0x1

    .line 97
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    .line 100
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_indicatorDirectionLinear:I

    .line 101
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    .line 104
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_trackStopIndicatorSize:I

    .line 106
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    .line 105
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorSize:I

    .line 108
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_trackStopIndicatorPadding:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 109
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_trackStopIndicatorPadding:I

    .line 110
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorPadding:Ljava/lang/Integer;

    .line 112
    :cond_0
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_trackInnerCornerRadius:I

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 115
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 116
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 119
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 118
    invoke-static {p2, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p2

    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    div-int/lit8 v0, v0, 0x2

    .line 117
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackInnerCornerRadius:I

    .line 121
    iput-boolean p3, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->useRelativeTrackInnerCornerRadius:Z

    .line 122
    iput-boolean p4, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hasInnerCornerRadius:Z

    goto :goto_0

    .line 123
    :cond_1
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 125
    invoke-virtual {p2, v0, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p2

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackInnerCornerRadiusFraction:F

    .line 126
    iput-boolean p4, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->useRelativeTrackInnerCornerRadius:Z

    .line 127
    iput-boolean p4, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hasInnerCornerRadius:Z

    .line 130
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->validateSpec()V

    .line 134
    iget p1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    if-ne p1, p4, :cond_3

    move p3, p4

    :cond_3
    iput-boolean p3, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    return-void
.end method


# virtual methods
.method public getTrackInnerCornerRadiusInPx()I
    .locals 2

    .line 139
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hasInnerCornerRadius:Z

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->getTrackCornerRadiusInPx()I

    move-result v0

    return v0

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->useRelativeTrackInnerCornerRadius:Z

    if-eqz v0, :cond_1

    .line 142
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackInnerCornerRadiusFraction:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 143
    :cond_1
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackInnerCornerRadius:I

    return v0
.end method

.method public useStrokeCap()Z
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->useStrokeCap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->getTrackInnerCornerRadiusInPx()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->getTrackCornerRadiusInPx()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method validateSpec()V
    .locals 2

    .line 153
    invoke-super {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->validateSpec()V

    .line 154
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorSize:I

    if-ltz v0, :cond_5

    .line 158
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    if-nez v0, :cond_4

    .line 160
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->getTrackCornerRadiusInPx()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hasInnerCornerRadius:Z

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->getTrackInnerCornerRadiusInPx()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorTrackGapSize:I

    if-eqz v0, :cond_3

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorColors:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 171
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contiguous indeterminate animation must be used with 3 or more indicator colors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rounded corners without gap are not supported in contiguous indeterminate animation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void

    .line 156
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stop indicator size must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
