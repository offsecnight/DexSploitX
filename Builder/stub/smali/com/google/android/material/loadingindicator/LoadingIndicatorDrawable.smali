.class public final Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LoadingIndicatorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field alpha:I

.field private animatorDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

.field animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

.field private final context:Landroid/content/Context;

.field private drawingDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;

.field paint:Landroid/graphics/Paint;

.field private final specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

.field private staticDummyDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    .line 74
    iput-object p3, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->drawingDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;

    .line 75
    iput-object p4, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->animatorDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    .line 76
    new-instance p1, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    invoke-direct {p1}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 78
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->paint:Landroid/graphics/Paint;

    .line 80
    invoke-virtual {p4, p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->registerDrawable(Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;)V

    const/16 p1, 0xff

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->setAlpha(I)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;)Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;
    .locals 3

    .line 56
    new-instance v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;

    new-instance v1, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;

    invoke-direct {v1, p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;-><init>(Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;)V

    new-instance v2, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    invoke-direct {v2, p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;-><init>(Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)V

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/google/android/material/R$drawable;->ic_mtrl_arrow_circle:I

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object p0

    .line 62
    invoke-virtual {v0, p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->setStaticDummyDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private isSystemAnimatorDisabled()Z
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    iget-object v2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->context:Landroid/content/Context;

    .line 201
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 200
    invoke-virtual {v0, v2}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->isSystemAnimatorDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorColors:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 113
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->drawingDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->adjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->drawingDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;

    iget-object v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v2, v2, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerColor:I

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->getAlpha()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->drawContainer(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    .line 116
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->drawingDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;

    iget-object v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->animatorDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    iget-object v2, v2, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->indicatorState:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->getAlpha()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;I)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->alpha:I

    return v0
.end method

.method getAnimatorDelegate()Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->animatorDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    return-object v0
.end method

.method getDrawingDelegate()Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->drawingDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->drawingDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->getPreferredHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->drawingDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->getPreferredWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getStaticDummyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 173
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 175
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 149
    iget v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->alpha:I

    if-eq v0, p1, :cond_0

    .line 150
    iput p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->alpha:I

    .line 151
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method setAnimatorDelegate(Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->animatorDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    .line 238
    invoke-virtual {p1, p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->registerDrawable(Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->invalidateSelf()V

    return-void
.end method

.method setDrawingDelegate(Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->drawingDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;

    return-void
.end method

.method public setStaticDummyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0

    .line 123
    invoke-virtual {p0, p1, p2, p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->setVisible(ZZZ)Z

    move-result p1

    return p1
.end method

.method public setVisible(ZZZ)Z
    .locals 1

    .line 138
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    .line 139
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->animatorDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->cancelAnimatorImmediately()V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->isSystemAnimatorDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->animatorDelegate:Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;

    invoke-virtual {p1}, Lcom/google/android/material/loadingindicator/LoadingIndicatorAnimatorDelegate;->startAnimator()V

    :cond_0
    return p2
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 189
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
