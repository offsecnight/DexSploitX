.class Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;
.super Ljava/lang/Object;
.source "LoadingIndicatorDrawingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;
    }
.end annotation


# static fields
.field private static final INDETERMINATE_MORPH_SEQUENCE:[Landroidx/graphics/shapes/Morph;

.field private static final INDETERMINATE_SHAPES:[Landroidx/graphics/shapes/RoundedPolygon;


# instance fields
.field final indicatorPath:Landroid/graphics/Path;

.field final indicatorPathTransform:Landroid/graphics/Matrix;

.field specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x7

    .line 134
    new-array v0, v0, [Landroidx/graphics/shapes/RoundedPolygon;

    sget-object v1, Lcom/google/android/material/shape/MaterialShapes;->SOFT_BURST:Landroidx/graphics/shapes/RoundedPolygon;

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x1

    .line 136
    invoke-static {v1, v5, v2}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;ZLandroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/material/shape/MaterialShapes;->COOKIE_9:Landroidx/graphics/shapes/RoundedPolygon;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 137
    invoke-static {v1, v5, v6}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;ZLandroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/material/shape/MaterialShapes;->PENTAGON:Landroidx/graphics/shapes/RoundedPolygon;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 138
    invoke-static {v1, v5, v6}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;ZLandroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/material/shape/MaterialShapes;->PILL:Landroidx/graphics/shapes/RoundedPolygon;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 139
    invoke-static {v1, v5, v6}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;ZLandroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/material/shape/MaterialShapes;->SUNNY:Landroidx/graphics/shapes/RoundedPolygon;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 140
    invoke-static {v1, v5, v6}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;ZLandroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/material/shape/MaterialShapes;->COOKIE_4:Landroidx/graphics/shapes/RoundedPolygon;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 141
    invoke-static {v1, v5, v6}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;ZLandroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/material/shape/MaterialShapes;->OVAL:Landroidx/graphics/shapes/RoundedPolygon;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 142
    invoke-static {v1, v5, v6}, Lcom/google/android/material/shape/MaterialShapes;->normalize(Landroidx/graphics/shapes/RoundedPolygon;ZLandroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->INDETERMINATE_SHAPES:[Landroidx/graphics/shapes/RoundedPolygon;

    .line 145
    array-length v0, v0

    new-array v0, v0, [Landroidx/graphics/shapes/Morph;

    sput-object v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->INDETERMINATE_MORPH_SEQUENCE:[Landroidx/graphics/shapes/Morph;

    .line 149
    :goto_0
    sget-object v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->INDETERMINATE_SHAPES:[Landroidx/graphics/shapes/RoundedPolygon;

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 150
    sget-object v1, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->INDETERMINATE_MORPH_SEQUENCE:[Landroidx/graphics/shapes/Morph;

    new-instance v3, Landroidx/graphics/shapes/Morph;

    aget-object v4, v0, v2

    add-int/lit8 v5, v2, 0x1

    array-length v6, v0

    rem-int v6, v5, v6

    aget-object v0, v0, v6

    invoke-direct {v3, v4, v0}, Landroidx/graphics/shapes/Morph;-><init>(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)V

    aput-object v3, v1, v2

    move v2, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->indicatorPath:Landroid/graphics/Path;

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->indicatorPathTransform:Landroid/graphics/Matrix;

    .line 45
    iput-object p1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    return-void
.end method


# virtual methods
.method adjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    .line 66
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 67
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget-boolean v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->scaleToFit:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->getPreferredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 71
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->getPreferredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 72
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 73
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->getPreferredWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 80
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->getPreferredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->getPreferredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->getPreferredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    .line 78
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/high16 p2, -0x3d4c0000    # -90.0f

    .line 85
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    return-void
.end method

.method drawContainer(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerWidth:I

    iget-object v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 94
    invoke-static {p3, p4}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result p3

    .line 95
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    new-instance p3, Landroid/graphics/RectF;

    iget-object p4, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget p4, p4, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerWidth:I

    neg-int p4, p4

    int-to-float p4, p4

    div-float/2addr p4, v1

    iget-object v2, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v2, v2, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v3, v3, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v4, v4, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-direct {p3, p4, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;I)V
    .locals 2

    .line 113
    iget v0, p3, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->color:I

    invoke-static {v0, p4}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result p4

    .line 114
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 117
    iget p4, p3, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->rotationDegree:F

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 119
    iget-object p4, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->indicatorPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->rewind()V

    .line 120
    iget p4, p3, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->morphFraction:F

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p4, v0

    .line 121
    sget-object v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->INDETERMINATE_MORPH_SEQUENCE:[Landroidx/graphics/shapes/Morph;

    array-length v1, v0

    .line 122
    invoke-static {p4, v1}, Lcom/google/android/material/math/MathUtils;->floorMod(II)I

    move-result v1

    .line 123
    iget p3, p3, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;->morphFraction:F

    int-to-float p4, p4

    sub-float/2addr p3, p4

    .line 124
    aget-object p4, v0, v1

    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->indicatorPath:Landroid/graphics/Path;

    invoke-static {p4, p3, v0}, Landroidx/graphics/shapes/Shapes_androidKt;->toPath(Landroidx/graphics/shapes/Morph;FLandroid/graphics/Path;)Landroid/graphics/Path;

    .line 128
    iget-object p3, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->indicatorPathTransform:Landroid/graphics/Matrix;

    iget-object p4, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget p4, p4, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorSize:I

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    iget-object v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorSize:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p3, p4, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 129
    iget-object p3, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->indicatorPath:Landroid/graphics/Path;

    iget-object p4, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->indicatorPathTransform:Landroid/graphics/Matrix;

    invoke-virtual {p3, p4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 130
    iget-object p3, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->indicatorPath:Landroid/graphics/Path;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method getPreferredHeight()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerWidth:I

    iget-object v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method getPreferredWidth()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->containerHeight:I

    iget-object v1, p0, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->specs:Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/loadingindicator/LoadingIndicatorSpec;->indicatorSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
