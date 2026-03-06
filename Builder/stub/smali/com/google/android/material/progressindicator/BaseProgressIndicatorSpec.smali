.class public abstract Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.super Ljava/lang/Object;
.source "BaseProgressIndicatorSpec.java"


# instance fields
.field public hideAnimationBehavior:I

.field public indeterminateAnimatorDurationScale:F

.field public indicatorColors:[I

.field public indicatorTrackGapSize:I

.field public showAnimationBehavior:I

.field public trackColor:I

.field public trackCornerRadius:I

.field public trackCornerRadiusFraction:F

.field public trackThickness:I

.field public useRelativeTrackCornerRadius:Z

.field public waveAmplitude:I

.field public waveSpeed:I

.field public wavelengthDeterminate:I

.field public wavelengthIndeterminate:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_progress_track_thickness:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 121
    sget-object v4, Lcom/google/android/material/R$styleable;->BaseProgressIndicator:[I

    new-array v7, v0, [I

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 122
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 124
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackThickness:I

    .line 125
    invoke-static {v2, p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 127
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackCornerRadius:I

    .line 128
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 130
    iget p4, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne p4, v1, :cond_0

    .line 131
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 134
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    .line 133
    invoke-static {p2, p4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p2

    iget p4, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    div-int/lit8 p4, p4, 0x2

    .line 132
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    .line 136
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->useRelativeTrackCornerRadius:Z

    goto :goto_0

    .line 137
    :cond_0
    iget p4, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne p4, v1, :cond_1

    .line 138
    invoke-virtual {p2, p3, p3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p2

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadiusFraction:F

    const/4 p2, 0x1

    .line 139
    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->useRelativeTrackCornerRadius:Z

    .line 142
    :cond_1
    :goto_0
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_showAnimationBehavior:I

    .line 143
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    .line 146
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_hideAnimationBehavior:I

    .line 147
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    .line 150
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorTrackGapSize:I

    .line 151
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorTrackGapSize:I

    .line 153
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_wavelength:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 154
    sget p4, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_wavelengthDeterminate:I

    .line 156
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    .line 155
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iput p4, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->wavelengthDeterminate:I

    .line 158
    sget p4, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_wavelengthIndeterminate:I

    .line 160
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 159
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->wavelengthIndeterminate:I

    .line 162
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_waveAmplitude:I

    .line 163
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->waveAmplitude:I

    .line 164
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_waveSpeed:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->waveSpeed:I

    .line 165
    sget p2, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indeterminateAnimatorDurationScale:I

    .line 166
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indeterminateAnimatorDurationScale:F

    .line 168
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->loadIndicatorColors(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 169
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->loadTrackColor(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 171
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private loadIndicatorColors(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 3

    .line 183
    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 185
    sget p2, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 187
    invoke-static {p1, p2, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    return-void

    .line 192
    :cond_0
    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    .line 193
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 195
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 196
    sget p1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    .line 197
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    return-void

    .line 203
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    .line 205
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 204
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 206
    array-length p1, p1

    if-eqz p1, :cond_2

    return-void

    .line 207
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "indicatorColors cannot be empty when indicatorColor is not used."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private loadTrackColor(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    .line 221
    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    sget p1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackColor:I

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    return-void

    .line 226
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p2, 0x1010033

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, 0x3e4ccccd    # 0.2f

    .line 230
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 231
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 234
    iget p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    invoke-static {p2, p1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    return-void
.end method


# virtual methods
.method public getTrackCornerRadiusInPx()I
    .locals 2

    .line 259
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->useRelativeTrackCornerRadius:Z

    if-eqz v0, :cond_0

    .line 260
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadiusFraction:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 261
    :cond_0
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    return v0
.end method

.method public hasWavyEffect(Z)Z
    .locals 1

    .line 246
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->waveAmplitude:I

    if-lez v0, :cond_2

    if-nez p1, :cond_0

    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->wavelengthIndeterminate:I

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->wavelengthDeterminate:I

    if-lez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isHideAnimationEnabled()Z
    .locals 1

    .line 242
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowAnimationEnabled()Z
    .locals 1

    .line 238
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public useStrokeCap()Z
    .locals 2

    .line 269
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->useRelativeTrackCornerRadius:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadiusFraction:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method validateSpec()V
    .locals 2

    .line 274
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorTrackGapSize:I

    if-ltz v0, :cond_0

    return-void

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "indicatorTrackGapSize must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
