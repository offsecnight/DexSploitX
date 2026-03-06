.class public Lcom/google/android/material/carousel/MaskableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "MaskableFrameLayout.java"

# interfaces
.implements Lcom/google/android/material/carousel/Maskable;
.implements Lcom/google/android/material/shape/Shapeable;


# static fields
.field private static final NOT_SET:I = -0x1


# instance fields
.field private hoverListener:Landroid/view/View$OnHoverListener;

.field private isHovered:Z

.field private final maskRect:Landroid/graphics/RectF;

.field private maskXPercentage:F

.field private onMaskChangedListener:Lcom/google/android/material/carousel/OnMaskChangedListener;

.field private savedForceCompatClippingEnabled:Ljava/lang/Boolean;

.field private final screenBoundsRect:Landroid/graphics/Rect;

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/MaskableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/carousel/MaskableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 47
    iput v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskXPercentage:F

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->screenBoundsRect:Landroid/graphics/Rect;

    .line 52
    invoke-static {p0}, Lcom/google/android/material/shape/ShapeableDelegate;->create(Landroid/view/View;)Lcom/google/android/material/shape/ShapeableDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->savedForceCompatClippingEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->isHovered:Z

    .line 70
    invoke-static {p1, p2, p3, v0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/MaskableFrameLayout;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method static synthetic lambda$setShapeAppearanceModel$0(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 1

    .line 109
    instance-of v0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    if-eqz v0, :cond_0

    .line 113
    check-cast p0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-static {p0}, Lcom/google/android/material/shape/ClampedCornerSize;->createFromCornerSize(Lcom/google/android/material/shape/AbsoluteCornerSize;)Lcom/google/android/material/shape/ClampedCornerSize;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private onMaskChanged()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    iget-object v1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/shape/ShapeableDelegate;->onMaskChanged(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->onMaskChangedListener:Lcom/google/android/material/carousel/OnMaskChangedListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/google/android/material/carousel/OnMaskChangedListener;->onMaskChanged(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private updateMaskRectForMaskXPercentage()V
    .locals 5

    .line 146
    iget v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskXPercentage:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskXPercentage:F

    const/4 v3, 0x0

    invoke-static {v3, v0, v3, v1, v2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    .line 150
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v0, v3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/google/android/material/carousel/MaskableFrameLayout;->setMaskRectF(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    new-instance v1, Lcom/google/android/material/carousel/MaskableFrameLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/material/carousel/MaskableFrameLayout$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/carousel/MaskableFrameLayout;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/shape/ShapeableDelegate;->maybeClip(Landroid/graphics/Canvas;Lcom/google/android/material/canvas/CanvasCompat$CanvasOperation;)V

    return-void
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getMaskRectF()Landroid/graphics/RectF;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getMaskXPercentage()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    iget v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskXPercentage:F

    return v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method synthetic lambda$dispatchDraw$1$com-google-android-material-carousel-MaskableFrameLayout(Landroid/graphics/Canvas;)V
    .locals 0

    .line 244
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 90
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->savedForceCompatClippingEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, p0, v0}, Lcom/google/android/material/shape/ShapeableDelegate;->setForceCompatClippingEnabled(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeableDelegate;->isForceCompatClippingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->savedForceCompatClippingEnabled:Ljava/lang/Boolean;

    .line 100
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/shape/ShapeableDelegate;->setForceCompatClippingEnabled(Landroid/view/View;Z)V

    .line 101
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    const/4 v2, 0x7

    const/16 v3, 0x9

    if-nez v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_2

    .line 281
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 283
    iget-object v6, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 284
    iget-boolean v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->isHovered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->hoverListener:Landroid/view/View$OnHoverListener;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 286
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->hoverListener:Landroid/view/View$OnHoverListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 p1, 0x0

    .line 288
    iput-boolean p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->isHovered:Z

    return p1

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->hoverListener:Landroid/view/View$OnHoverListener;

    if-eqz v1, :cond_6

    .line 295
    iget-boolean v1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->isHovered:Z

    const/4 v4, 0x1

    if-nez v1, :cond_3

    if-ne v0, v2, :cond_3

    .line 296
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 297
    iput-boolean v4, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->isHovered:Z

    :cond_3
    if-eq v0, v2, :cond_4

    if-ne v0, v3, :cond_5

    .line 301
    :cond_4
    iput-boolean v4, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->isHovered:Z

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->hoverListener:Landroid/view/View$OnHoverListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 305
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 249
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->screenBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->screenBoundsRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->screenBoundsRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->screenBoundsRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 263
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->screenBoundsRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 265
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->screenBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 235
    iget-object v2, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 239
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 76
    iget p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskXPercentage:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout;->updateMaskRectForMaskXPercentage()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 221
    iget-object v2, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 225
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setForceCompatClipping(Z)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/shape/ShapeableDelegate;->setForceCompatClippingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setMaskRectF(Landroid/graphics/RectF;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 162
    invoke-direct {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout;->onMaskChanged()V

    return-void
.end method

.method public setMaskXPercentage(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 138
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 139
    iget v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskXPercentage:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 140
    iput p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->maskXPercentage:F

    .line 141
    invoke-direct {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout;->updateMaskRectForMaskXPercentage()V

    :cond_0
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->hoverListener:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method public setOnMaskChangedListener(Lcom/google/android/material/carousel/OnMaskChangedListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->onMaskChangedListener:Lcom/google/android/material/carousel/OnMaskChangedListener;

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 106
    new-instance v0, Lcom/google/android/material/carousel/MaskableFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/material/carousel/MaskableFrameLayout$$ExternalSyntheticLambda0;-><init>()V

    .line 107
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 119
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->shapeableDelegate:Lcom/google/android/material/shape/ShapeableDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/shape/ShapeableDelegate;->onShapeAppearanceChanged(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method
