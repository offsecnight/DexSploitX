.class public Lcom/google/android/material/button/MaterialButtonGroup;
.super Landroid/widget/LinearLayout;
.source "MaterialButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final LOG_TAG:Ljava/lang/String; = "MButtonGroup"


# instance fields
.field private buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

.field private childOrder:[Ljava/lang/Integer;

.field private final childOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field

.field private childShapesDirty:Z

.field private groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

.field innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

.field private final originalChildShapeAppearanceModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/ShapeAppearanceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final originalChildStateListShapeAppearanceModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/StateListShapeAppearanceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final pressedStateTracker:Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;

.field private spacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_MaterialButtonGroup:I

    sput v0, Lcom/google/android/material/button/MaterialButtonGroup;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 141
    sget v0, Lcom/google/android/material/R$attr;->materialButtonGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButtonGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 146
    sget v4, Lcom/google/android/material/button/MaterialButtonGroup;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildShapeAppearanceModels:Ljava/util/List;

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildStateListShapeAppearanceModels:Ljava/util/List;

    .line 110
    new-instance p1, Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonGroup;Lcom/google/android/material/button/MaterialButtonGroup$1;)V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->pressedStateTracker:Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;

    .line 111
    new-instance p1, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/material/button/MaterialButtonGroup$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/button/MaterialButtonGroup;)V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childOrderComparator:Ljava/util/Comparator;

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 148
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialButtonGroup:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p2

    move v3, p3

    .line 150
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 153
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_buttonSizeChange:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 154
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_buttonSizeChange:I

    .line 155
    invoke-static {v0, p2, p3}, Lcom/google/android/material/shape/StateListSizeChange;->create(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/shape/StateListSizeChange;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    .line 159
    :cond_0
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_shapeAppearance:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 160
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_shapeAppearance:I

    .line 161
    invoke-static {v0, p2, p3}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->create(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-nez p3, :cond_1

    .line 164
    new-instance p3, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;

    sget v1, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_shapeAppearance:I

    .line 168
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_shapeAppearanceOverlay:I

    .line 170
    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 166
    invoke-static {v0, v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 173
    invoke-virtual {p3}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 176
    :cond_1
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_innerCornerSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 177
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_innerCornerSize:I

    new-instance v1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 178
    invoke-static {v0, p2, p3, v1}, Lcom/google/android/material/shape/StateListCornerSize;->create(Landroid/content/Context;Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/StateListCornerSize;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    .line 185
    :cond_2
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_android_spacing:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    .line 187
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 188
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonGroup_android_enabled:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->setEnabled(Z)V

    .line 189
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private adjustChildMarginsAndUpdateLayout()V
    .locals 7

    .line 396
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getFirstVisibleChildIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 401
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 403
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    .line 404
    invoke-virtual {p0, v3}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v3

    .line 408
    iget v4, p0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    const/4 v5, 0x0

    if-gtz v4, :cond_1

    .line 409
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x1

    .line 413
    invoke-virtual {v2, v6}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    .line 414
    invoke-virtual {v3, v6}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    goto :goto_1

    .line 416
    :cond_1
    invoke-virtual {v2, v5}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    .line 417
    invoke-virtual {v3, v5}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    move v4, v5

    .line 420
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonGroup;->buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 421
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getOrientation()I

    move-result v6

    if-nez v6, :cond_2

    .line 422
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 423
    iget v6, p0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    sub-int/2addr v6, v4

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 424
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 426
    :cond_2
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 427
    iget v6, p0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    sub-int/2addr v6, v4

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 428
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 431
    :goto_2
    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonGroup;->resetChildMargins(I)V

    return-void
.end method

.method private adjustChildSizeChange()V
    .locals 6

    .line 486
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_6

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getFirstVisibleChildIndex()I

    move-result v0

    .line 490
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getLastVisibleChildIndex()I

    move-result v1

    const v2, 0x7fffffff

    move v3, v0

    :goto_0
    if-gt v3, v1, :cond_3

    .line 493
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 498
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonGroup;->getButtonAllowedWidthIncrease(I)I

    move-result v4

    if-eq v3, v0, :cond_2

    if-eq v3, v1, :cond_2

    .line 507
    div-int/lit8 v4, v4, 0x2

    .line 504
    :cond_2
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_2
    if-gt v3, v1, :cond_7

    .line 511
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_5

    .line 514
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setSizeChange(Lcom/google/android/material/shape/StateListSizeChange;)V

    .line 517
    invoke-virtual {p0, v3}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    if-eq v3, v0, :cond_6

    if-ne v3, v1, :cond_5

    goto :goto_3

    :cond_5
    mul-int/lit8 v5, v2, 0x2

    goto :goto_4

    :cond_6
    :goto_3
    move v5, v2

    .line 518
    :goto_4
    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setWidthChangeMax(I)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_6
    return-void
.end method

.method private getButtonAllowedWidthIncrease(I)I
    .locals 3

    .line 532
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    if-nez v0, :cond_0

    goto :goto_2

    .line 535
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    .line 536
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/shape/StateListSizeChange;->getMaxWidthChange(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 538
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getPrevVisibleChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    .line 540
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getAllowedWidthDecrease()I

    move-result v2

    .line 541
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getNextVisibleChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 543
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getAllowedWidthDecrease()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    .line 544
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_3
    :goto_2
    return v1
.end method

.method private getFirstVisibleChildIndex()I
    .locals 3

    .line 717
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 719
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getLastVisibleChildIndex()I
    .locals 2

    .line 728
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 730
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getNextVisibleChildButton(I)Lcom/google/android/material/button/MaterialButton;
    .locals 2

    .line 752
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildCount()I

    move-result v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_1

    .line 754
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getOriginalStateListShapeBuilder(ZZI)Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildStateListShapeAppearanceModels:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 366
    new-instance p1, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;

    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildShapeAppearanceModels:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p1, p2}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-object p1

    .line 367
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method private getPrevVisibleChildButton(I)Lcom/google/android/material/button/MaterialButton;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 764
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->isChildVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private isChildVisible(I)Z
    .locals 1

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 740
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private recoverAllChildrenLayoutParams()V
    .locals 2

    const/4 v0, 0x0

    .line 249
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 250
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->recoverOriginalLayoutParams()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetChildMargins(I)V
    .locals 3

    .line 438
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    .line 443
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 444
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 445
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 446
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void

    .line 450
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 451
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 452
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 453
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_2
    :goto_0
    return-void
.end method

.method private setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2

    .line 745
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 746
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setId(I)V

    :cond_0
    return-void
.end method

.method private updateChildOrder()V
    .locals 6

    .line 772
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childOrderComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 773
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 775
    invoke-virtual {p0, v3}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 778
    :cond_0
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childOrder:[Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 204
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    .line 205
    const-string p1, "MButtonGroup"

    const-string p2, "Child views must be of type MaterialButton."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->recoverAllChildrenLayoutParams()V

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 213
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 214
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V

    .line 216
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->pressedStateTracker:Lcom/google/android/material/button/MaterialButtonGroup$PressedStateTracker;

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    .line 219
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildShapeAppearanceModels:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildStateListShapeAppearanceModels:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getStateListShapeAppearanceModel()Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    return-void
.end method

.method buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 708
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 709
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 710
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    return-object p1

    .line 713
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildOrder()V

    .line 195
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getButtonSizeChange()Lcom/google/android/material/shape/StateListSizeChange;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    return-object v0
.end method

.method getChildButton(I)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 703
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    return-object p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 376
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childOrder:[Ljava/lang/Integer;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 377
    :cond_1
    :goto_0
    const-string p1, "MButtonGroup"

    const-string v0, "Child order wasn\'t updated"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public getInnerCornerSize()Lcom/google/android/material/shape/CornerSize;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    invoke-virtual {v0}, Lcom/google/android/material/shape/StateListCornerSize;->getDefaultCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    return-object v0
.end method

.method public getInnerCornerSizeStateList()Lcom/google/android/material/shape/StateListCornerSize;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    return-object v0
.end method

.method public getShapeAppearance()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 657
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->getDefaultShape(Z)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public getSpacing()I
    .locals 1

    .line 587
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    return v0
.end method

.method public getStateListShapeAppearance()Lcom/google/android/material/shape/StateListShapeAppearanceModel;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    return-object v0
.end method

.method synthetic lambda$new$0$com-google-android-material-button-MaterialButtonGroup(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)I
    .locals 2

    .line 113
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isPressed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButton;->isPressed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 124
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButtonGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method onButtonWidthChanged(Lcom/google/android/material/button/MaterialButton;I)V
    .locals 2

    .line 457
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getPrevVisibleChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    .line 462
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->getNextVisibleChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 467
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    :cond_2
    if-nez p1, :cond_3

    .line 470
    invoke-virtual {v0, p2}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    :cond_3
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 474
    div-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    add-int/lit8 p2, p2, 0x1

    .line 476
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 264
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->recoverAllChildrenLayoutParams()V

    .line 267
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->adjustChildSizeChange()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 257
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildShapes()V

    .line 258
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->adjustChildMarginsAndUpdateLayout()V

    .line 259
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 228
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 230
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    .line 231
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    .line 234
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildShapeAppearanceModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->originalChildStateListShapeAppearanceModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 241
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildShapes()V

    .line 244
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->recoverAllChildrenLayoutParams()V

    .line 245
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->adjustChildMarginsAndUpdateLayout()V

    return-void
.end method

.method public setButtonSizeChange(Lcom/google/android/material/shape/StateListSizeChange;)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    if-eq v0, p1, :cond_0

    .line 577
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->buttonSizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    .line 578
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->adjustChildSizeChange()V

    .line 579
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->requestLayout()V

    .line 580
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 788
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 790
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 791
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 792
    invoke-virtual {v1, p1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInnerCornerSize(Lcom/google/android/material/shape/CornerSize;)V
    .locals 0

    .line 617
    invoke-static {p1}, Lcom/google/android/material/shape/StateListCornerSize;->create(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/StateListCornerSize;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    const/4 p1, 0x1

    .line 618
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 619
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildShapes()V

    .line 620
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->invalidate()V

    return-void
.end method

.method public setInnerCornerSizeStateList(Lcom/google/android/material/shape/StateListCornerSize;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    const/4 p1, 0x1

    .line 647
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 648
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildShapes()V

    .line 649
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 551
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getOrientation()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 552
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 554
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public setShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 666
    new-instance v0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 667
    invoke-virtual {v0}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    const/4 p1, 0x1

    .line 668
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 669
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildShapes()V

    .line 670
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->invalidate()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    .line 596
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->spacing:I

    .line 597
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->invalidate()V

    .line 598
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->requestLayout()V

    return-void
.end method

.method public setStateListShapeAppearance(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    const/4 p1, 0x1

    .line 694
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 695
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->updateChildShapes()V

    .line 696
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->invalidate()V

    return-void
.end method

.method updateChildShapes()V
    .locals 12

    .line 277
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->groupStateListShapeAppearance:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-eqz v0, :cond_c

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    if-nez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonGroup;->childShapesDirty:Z

    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildCount()I

    move-result v1

    .line 282
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getFirstVisibleChildIndex()I

    move-result v2

    .line 283
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getLastVisibleChildIndex()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_c

    .line 285
    invoke-virtual {p0, v4}, Lcom/google/android/material/button/MaterialButtonGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v5

    .line 286
    invoke-virtual {v5}, Lcom/google/android/material/button/MaterialButton;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    goto :goto_7

    :cond_2
    const/4 v6, 0x1

    if-ne v4, v2, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v0

    :goto_1
    if-ne v4, v3, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    move v8, v0

    .line 293
    :goto_2
    invoke-direct {p0, v7, v8, v4}, Lcom/google/android/material/button/MaterialButtonGroup;->getOriginalStateListShapeBuilder(ZZI)Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;

    move-result-object v9

    .line 295
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonGroup;->getOrientation()I

    move-result v10

    if-nez v10, :cond_5

    move v10, v6

    goto :goto_3

    :cond_5
    move v10, v0

    .line 296
    :goto_3
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    if-eqz v10, :cond_8

    if-eqz v7, :cond_6

    const/4 v7, 0x5

    goto :goto_4

    :cond_6
    move v7, v0

    :goto_4
    if-eqz v8, :cond_7

    or-int/lit8 v7, v7, 0xa

    :cond_7
    if-eqz v11, :cond_a

    .line 314
    invoke-static {v7}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->swapCornerPositionRtl(I)I

    move-result v7

    goto :goto_6

    :cond_8
    if-eqz v7, :cond_9

    const/4 v7, 0x3

    goto :goto_5

    :cond_9
    move v7, v0

    :goto_5
    if-eqz v8, :cond_a

    or-int/lit8 v7, v7, 0xc

    :cond_a
    :goto_6
    not-int v7, v7

    .line 332
    iget-object v8, p0, Lcom/google/android/material/button/MaterialButtonGroup;->innerCornerSize:Lcom/google/android/material/shape/StateListCornerSize;

    .line 334
    invoke-virtual {v9, v8, v7}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->setCornerSizeOverride(Lcom/google/android/material/shape/StateListCornerSize;I)Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;

    move-result-object v7

    .line 335
    invoke-virtual {v7}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    move-result-object v7

    .line 336
    invoke-virtual {v7}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 337
    invoke-virtual {v5, v7}, Lcom/google/android/material/button/MaterialButton;->setStateListShapeAppearanceModel(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    goto :goto_7

    .line 340
    :cond_b
    invoke-virtual {v7, v6}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->getDefaultShape(Z)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v6

    .line 339
    invoke-virtual {v5, v6}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_c
    :goto_8
    return-void
.end method
