.class public final Lcom/google/android/material/loadingindicator/LoadingIndicator;
.super Landroid/view/View;
.source "LoadingIndicator.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field static final DEF_STYLE_RES:I


# instance fields
.field private final drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

.field private final specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_LoadingIndicator:I

    sput v0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    sget v0, Lcom/google/android/material/R$attr;->loadingIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 65
    sget v0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-static {p1, v0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->create(Landroid/content/Context;Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;)Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    .line 74
    invoke-virtual {p1, p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 76
    invoke-virtual {p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->getDrawingDelegate()Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    .line 77
    new-instance p1, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    invoke-direct {p1}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->setAnimatorDurationScaleProvider(Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 153
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContainerColor()I
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerColor:I

    return v0
.end method

.method public getContainerHeight()I
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerHeight:I

    return v0
.end method

.method public getContainerWidth()I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerWidth:I

    return v0
.end method

.method public getDrawable()Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    return-object v0
.end method

.method public getIndicatorColor()[I
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget-object v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorColors:[I

    return-object v0
.end method

.method public getIndicatorSize()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorSize:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->invalidate()V

    return-void
.end method

.method isEffectivelyVisible()Z
    .locals 3

    move-object v0, p0

    .line 190
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 193
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v2

    .line 197
    :cond_2
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_3

    return v1

    .line 200
    :cond_3
    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 109
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingTop()I

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 116
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    invoke-virtual {v1, p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 83
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 85
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 87
    iget-object v4, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    invoke-virtual {v4}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->getDrawingDelegate()Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;

    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->getPreferredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 91
    invoke-virtual {v4}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->getPreferredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingTop()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    if-ne v0, v7, :cond_0

    .line 94
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 96
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    :goto_0
    if-ne v1, v7, :cond_2

    .line 100
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 102
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 104
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 128
    iget-object p3, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->setBounds(IIII)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 133
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 134
    iget-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    .line 135
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->visibleToUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    .line 134
    :goto_0
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->setVisible(ZZZ)Z

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .line 140
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 141
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    .line 142
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->visibleToUser()Z

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 141
    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->setVisible(ZZZ)Z

    return-void
.end method

.method public setAnimatorDurationScaleProvider(Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    iput-object p1, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    return-void
.end method

.method public setContainerColor(I)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerColor:I

    if-eq v0, p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerColor:I

    .line 304
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public setContainerHeight(I)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerHeight:I

    if-eq v0, p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerHeight:I

    .line 258
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->requestLayout()V

    .line 259
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public setContainerWidth(I)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerWidth:I

    if-eq v0, p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerWidth:I

    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->requestLayout()V

    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public varargs setIndicatorColor([I)V
    .locals 3

    .line 275
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 277
    new-array p1, p1, [I

    .line 280
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$attr;->colorPrimary:I

    const/4 v2, -0x1

    .line 279
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getIndicatorColor()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iput-object p1, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorColors:[I

    .line 285
    iget-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->drawable:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->getAnimatorDelegate()Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->invalidateSpecValues()V

    .line 286
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->invalidate()V

    :cond_1
    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorSize:I

    if-eq v0, p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicator;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorSize:I

    .line 220
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->requestLayout()V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method visibleToUser()Z
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicator;->isEffectivelyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
