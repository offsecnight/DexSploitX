.class abstract Lcom/google/android/material/appbar/HeaderBehavior;
.super Lcom/google/android/material/appbar/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/google/android/material/appbar/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private activePointerId:I

.field private flingRunnable:Ljava/lang/Runnable;

.field private isBeingDragged:Z

.field private lastMotionY:I

.field scroller:Landroid/widget/OverScroller;

.field private touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 46
    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 46
    iput p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 254
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method canDragView(Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method final fling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    if-nez v0, :cond_1

    .line 207
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 212
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v4

    .line 214
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v9, p3

    move v10, p4

    .line 210
    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 220
    iget-object p3, p0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 221
    new-instance p3, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;-><init>(Lcom/google/android/material/appbar/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object p3, p0, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    .line 222
    invoke-virtual {p2, p3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    .line 225
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/material/appbar/HeaderBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 58
    iget v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    if-gez v0, :cond_0

    .line 59
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    .line 63
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    if-eqz v0, :cond_3

    .line 64
    iget v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    if-ne v0, v3, :cond_1

    return v4

    .line 68
    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    return v4

    .line 73
    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 74
    iget v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 75
    iget v5, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    if-le v1, v5, :cond_3

    .line 76
    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    return v2

    .line 81
    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_5

    .line 82
    iput v3, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 84
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 85
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 86
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_0

    :cond_4
    move p1, v4

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    if-eqz p1, :cond_5

    .line 88
    iput v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    .line 89
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 90
    invoke-direct {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->ensureVelocityTracker()V

    .line 93
    iget-object p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 94
    iget-object p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    return v2

    .line 100
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_6

    .line 101
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_6
    return v4
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 111
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v8, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v8

    goto :goto_0

    :cond_1
    move v1, v7

    .line 126
    :goto_0
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 127
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    goto :goto_1

    .line 113
    :cond_2
    iget v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v6, :cond_3

    return v7

    .line 118
    :cond_3
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 119
    iget v3, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    sub-int/2addr v3, v1

    .line 120
    iput v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    .line 122
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/HeaderBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    :goto_1
    move v1, v7

    goto :goto_3

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_5

    .line 132
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 133
    iget-object v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 134
    iget-object v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 135
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v1

    neg-int v3, v1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/HeaderBehavior;->fling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    move v1, v8

    goto :goto_2

    :cond_5
    move v1, v7

    .line 140
    :goto_2
    iput-boolean v7, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 141
    iput v6, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 142
    iget-object v2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_6

    .line 143
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    .line 144
    iput-object v2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 149
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_7

    .line 150
    invoke-virtual {v2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 153
    :cond_7
    iget-boolean v2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    return v7

    :cond_9
    :goto_4
    return v8
.end method

.method final scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v4, v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    .line 187
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    return p1
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 157
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    return p1
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    move-result p1

    if-eqz p4, :cond_0

    if-lt p1, p4, :cond_0

    if-gt p1, p5, :cond_0

    .line 169
    invoke-static {p3, p4, p5}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 172
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->setTopAndBottomOffset(I)Z

    sub-int/2addr p1, p2

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
