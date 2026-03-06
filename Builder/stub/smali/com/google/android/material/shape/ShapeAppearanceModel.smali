.class public Lcom/google/android/material/shape/ShapeAppearanceModel;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;,
        Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;
    }
.end annotation


# static fields
.field public static final NUM_CORNERS:I = 0x4

.field public static final PILL:Lcom/google/android/material/shape/CornerSize;


# instance fields
.field bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

.field leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field topRightCornerSize:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 595
    new-instance v0, Lcom/google/android/material/shape/RelativeCornerSize;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    sput-object v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->PILL:Lcom/google/android/material/shape/CornerSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 630
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 631
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 632
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 634
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 635
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 636
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 637
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 639
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 640
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 641
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 642
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V
    .locals 1

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$100(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 612
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$200(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 613
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$300(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 614
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$400(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 616
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$500(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 617
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$600(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 618
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$700(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 619
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$800(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 621
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$900(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 622
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1000(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 623
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1100(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 624
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1200(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;Lcom/google/android/material/shape/ShapeAppearanceModel$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 466
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 511
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static builder(Landroid/content/Context;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 520
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 6

    .line 534
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    if-eqz p2, :cond_0

    .line 536
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 538
    :cond_0
    sget-object p0, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    invoke-virtual {v0, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 541
    :try_start_0
    sget p1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamily:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 542
    sget p2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 543
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 544
    sget v0, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopRight:I

    .line 545
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 546
    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 547
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 548
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 549
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 551
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    .line 552
    invoke-static {p0, v2, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object p3

    .line 554
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopLeft:I

    .line 555
    invoke-static {p0, v2, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 556
    sget v3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopRight:I

    .line 557
    invoke-static {p0, v3, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 558
    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomRight:I

    .line 559
    invoke-static {p0, v4, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v4

    .line 560
    sget v5, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 561
    invoke-static {p0, v5, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object p3

    .line 563
    new-instance v5, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 564
    invoke-virtual {v5, p2, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    .line 565
    invoke-virtual {p2, v0, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    .line 566
    invoke-virtual {p2, v1, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    .line 567
    invoke-virtual {p2, p1, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 570
    throw p1
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 475
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 485
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 496
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialShape:[I

    .line 497
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 499
    sget p2, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 500
    sget v0, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearanceOverlay:I

    .line 501
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 502
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 503
    invoke-static {p0, p2, p3, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 2

    .line 577
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 585
    new-instance p2, Lcom/google/android/material/shape/AbsoluteCornerSize;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 586
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    return-object p2

    .line 587
    :cond_1
    iget p0, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 588
    new-instance p0, Lcom/google/android/material/shape/RelativeCornerSize;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method


# virtual methods
.method public getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public hasRoundedCorners()Z
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v0, v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v0, v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v0, v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v0, v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRoundRect(Landroid/graphics/RectF;)Z
    .locals 5

    .line 821
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 822
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 823
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 824
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 825
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 827
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    invoke-interface {v3, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v3

    .line 829
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 830
    invoke-interface {v4, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 831
    invoke-interface {v4, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 832
    invoke-interface {v4, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 834
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->hasRoundedCorners()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 768
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 856
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 858
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 860
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 777
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    return-object p1
.end method

.method public withCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 782
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    return-object p1
.end method

.method public withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2

    .line 805
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 806
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 807
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 808
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 809
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    .line 810
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    return-object p1
.end method
