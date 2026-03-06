.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "MaterialButton.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButton$SavedState;,
        Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;,
        Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;,
        Lcom/google/android/material/button/MaterialButton$IconGravity;
    }
.end annotation


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field public static final ICON_GRAVITY_END:I = 0x3

.field public static final ICON_GRAVITY_START:I = 0x1

.field public static final ICON_GRAVITY_TEXT_END:I = 0x4

.field public static final ICON_GRAVITY_TEXT_START:I = 0x2

.field public static final ICON_GRAVITY_TEXT_TOP:I = 0x20

.field public static final ICON_GRAVITY_TOP:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String; = "MaterialButton"

.field private static final MATERIAL_SIZE_OVERLAY_ATTR:I

.field private static final OPTICAL_CENTER_RATIO:F = 0.11f

.field private static final UNSET:I = -0x1

.field private static final WIDTH_INCREASE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessibilityClassName:Ljava/lang/String;

.field allowedWidthDecrease:I

.field private broadcasting:Z

.field private checked:Z

.field private displayedWidthDecrease:F

.field private displayedWidthIncrease:F

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconGravity:I

.field private iconLeft:I

.field private iconPadding:I

.field private iconSize:I

.field private iconTint:Landroid/content/res/ColorStateList;

.field private iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private iconTop:I

.field private isInHorizontalButtonGroup:Z

.field private final materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

.field private final onCheckedChangeListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

.field private opticalCenterEnabled:Z

.field private opticalCenterShift:I

.field private orientation:I

.field private originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private originalPaddingEnd:I

.field private originalPaddingStart:I

.field private originalWidth:F

.field sizeChange:Lcom/google/android/material/shape/StateListSizeChange;

.field widthChangeMax:I

.field private widthIncreaseSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x101009f

    .line 153
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    const v0, 0x10100a0

    .line 154
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    .line 218
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Button:I

    sput v0, Lcom/google/android/material/button/MaterialButton;->DEF_STYLE_RES:I

    .line 220
    sget v0, Lcom/google/android/material/R$attr;->materialSizeOverlay:I

    sput v0, Lcom/google/android/material/button/MaterialButton;->MATERIAL_SIZE_OVERLAY_ATTR:I

    .line 1655
    new-instance v0, Lcom/google/android/material/button/MaterialButton$1;

    const-string v1, "widthIncrease"

    invoke-direct {v0, v1}, Lcom/google/android/material/button/MaterialButton$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->WIDTH_INCREASE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 271
    sget v0, Lcom/google/android/material/R$attr;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 275
    sget v4, Lcom/google/android/material/button/MaterialButton;->DEF_STYLE_RES:I

    sget v0, Lcom/google/android/material/button/MaterialButton;->MATERIAL_SIZE_OVERLAY_ATTR:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 276
    invoke-static {p1, p2, p3, v4, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II[I)Landroid/content/Context;

    move-result-object p1

    .line 275
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 227
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 243
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    const/4 v6, -0x1

    .line 246
    iput v6, p0, Lcom/google/android/material/button/MaterialButton;->orientation:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 247
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 248
    iput v6, p0, Lcom/google/android/material/button/MaterialButton;->originalPaddingStart:I

    .line 249
    iput v6, p0, Lcom/google/android/material/button/MaterialButton;->originalPaddingEnd:I

    .line 259
    iput v6, p0, Lcom/google/android/material/button/MaterialButton;->allowedWidthDecrease:I

    .line 280
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 282
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialButton:[I

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    .line 283
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 286
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_iconPadding:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 287
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_iconTintMode:I

    .line 289
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 288
    invoke-static {p3, v2}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 293
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_iconTint:I

    .line 292
    invoke-static {p3, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 294
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v2, Lcom/google/android/material/R$styleable;->MaterialButton_icon:I

    invoke-static {p3, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 295
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_iconGravity:I

    const/4 v2, 0x1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 297
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_iconSize:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 298
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButton_shapeAppearance:I

    .line 299
    invoke-static {v0, p2, p3}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->create(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 303
    invoke-virtual {p3, v2}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->getDefaultShape(Z)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 305
    :goto_0
    sget v1, Lcom/google/android/material/R$styleable;->MaterialButton_opticalCenterEnabled:I

    .line 306
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 309
    new-instance v3, Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-direct {v3, p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 310
    invoke-virtual {v3, p2}, Lcom/google/android/material/button/MaterialButtonHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 313
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_checked:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setCheckedInternal(Z)V

    if-eqz p3, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->createSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerSpringForce(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 317
    invoke-virtual {v3, p3}, Lcom/google/android/material/button/MaterialButtonHelper;->setStateListShapeAppearanceModel(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    .line 319
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->setOpticalCenterEnabled(Z)V

    .line 321
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 324
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    move p1, v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/button/MaterialButton;)F
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getDisplayedWidthIncrease()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/button/MaterialButton;F)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthIncrease(F)V

    return-void
.end method

.method private createSpringForce()Landroidx/dynamicanimation/animation/SpringForce;
    .locals 3

    .line 334
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$attr;->motionSpringFastSpatial:I

    sget v2, Lcom/google/android/material/R$style;->Motion_Material3_Spring_Standard_Fast_Spatial:I

    .line 333
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeSpringForce(Landroid/content/Context;II)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    return-object v0
.end method

.method private getActualTextAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    .line 669
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTextAlignment()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 681
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    .line 673
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    .line 676
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 671
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getGravityTextAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayedWidthIncrease()F
    .locals 1

    .line 1568
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthIncrease:F

    return v0
.end method

.method private getGravityTextAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    .line 647
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getGravity()I

    move-result v0

    const v1, 0x800007

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const v1, 0x800005

    if-eq v0, v1, :cond_0

    .line 656
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    .line 652
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 649
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method private getOpticalCenterShift()I
    .locals 2

    .line 1644
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->isInHorizontalButtonGroup:Z

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1647
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getCornerSizeDiffX()F

    move-result v0

    const v1, 0x3de147ae    # 0.11f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getTextHeight()I
    .locals 5

    .line 760
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 765
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 766
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 769
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    invoke-interface {v2, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    .line 773
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 775
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getTextLayoutWidth()I
    .locals 4

    .line 752
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-double v0, v1

    .line 756
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private initializeSizeAnimation()V
    .locals 2

    .line 328
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/google/android/material/button/MaterialButton;->WIDTH_INCREASE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->widthIncreaseSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 329
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->createSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private isIconEnd()Z
    .locals 2

    .line 1015
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isIconStart()Z
    .locals 3

    .line 1011
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isIconTop()Z
    .locals 2

    .line 1019
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isInHorizontalButtonGroup()Z
    .locals 1

    .line 1544
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/button/MaterialButtonGroup;

    if-eqz v0, :cond_0

    .line 1545
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonGroup;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonGroup;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isLayoutRTL()Z
    .locals 2

    .line 779
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isUsingOriginalBackground()Z
    .locals 1

    .line 1511
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isBackgroundOverwritten()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private maybeAnimateSize(Z)V
    .locals 3

    .line 1521
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->sizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->widthIncreaseSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_1

    .line 1525
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->initializeSizeAnimation()V

    .line 1527
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->isInHorizontalButtonGroup:Z

    if-eqz v0, :cond_2

    .line 1529
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->widthChangeMax:I

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->sizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    .line 1533
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/StateListSizeChange;->getSizeChangeForState([I)Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;->widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    .line 1535
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->getChange(I)I

    move-result v1

    .line 1530
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1536
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->widthIncreaseSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    if-eqz p1, :cond_2

    .line 1538
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->widthIncreaseSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_2
    :goto_0
    return-void
.end method

.method private resetIconDrawable()V
    .locals 2

    .line 1001
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1003
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1005
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1006
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private setCheckedInternal(Z)V
    .locals 2

    .line 1306
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    if-eq v0, p1, :cond_3

    .line 1307
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 1309
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    .line 1312
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-eqz p1, :cond_0

    .line 1313
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedStateChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 1317
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 1321
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    .line 1322
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;

    .line 1323
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    invoke-interface {v0, p0, v1}, Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1325
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private setDisplayedWidthIncrease(F)V
    .locals 1

    .line 1572
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthIncrease:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1573
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthIncrease:F

    .line 1574
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updatePaddingsAndSizeForWidthAnimation()V

    .line 1575
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->invalidate()V

    .line 1577
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/button/MaterialButtonGroup;

    if-eqz p1, :cond_0

    .line 1578
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonGroup;

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthIncrease:F

    float-to-int v0, v0

    .line 1579
    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/button/MaterialButtonGroup;->onButtonWidthChanged(Lcom/google/android/material/button/MaterialButton;I)V

    :cond_0
    return-void
.end method

.method private updateIcon(Z)V
    .locals 6

    .line 966
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 967
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 968
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 969
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 970
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 973
    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 974
    :goto_0
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 975
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    add-int/2addr v0, v4

    add-int/2addr v2, v5

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 976
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 981
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->resetIconDrawable()V

    return-void

    .line 986
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    .line 987
    aget-object v0, p1, v0

    .line 988
    aget-object v1, p1, v1

    const/4 v2, 0x2

    .line 989
    aget-object p1, p1, v2

    .line 991
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-ne v0, v2, :cond_7

    .line 992
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_7

    .line 993
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_8

    .line 996
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->resetIconDrawable()V

    :cond_8
    return-void
.end method

.method private updateIconPosition(II)V
    .locals 5

    .line 686
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconStart()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 723
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isIconTop()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 724
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 725
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    .line 726
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    .line 727
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    return-void

    .line 731
    :cond_2
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 736
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 737
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    sub-int/2addr p2, p1

    .line 740
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/2addr p2, v1

    .line 733
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 743
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    if-eq p2, p1, :cond_c

    .line 744
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    .line 745
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    return-void

    .line 691
    :cond_4
    :goto_0
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    .line 693
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getActualTextAlignment()Landroid/text/Layout$Alignment;

    move-result-object p2

    .line 694
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b

    if-ne v0, v1, :cond_5

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq p2, v0, :cond_b

    :cond_5
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_6

    goto :goto_2

    .line 703
    :cond_6
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 706
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextLayoutWidth()I

    move-result v4

    sub-int/2addr p1, v4

    .line 707
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingEnd()I

    move-result v4

    sub-int/2addr p1, v4

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    sub-int/2addr p1, v0

    .line 710
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    .line 712
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_8

    div-int/lit8 p1, p1, 0x2

    .line 715
    :cond_8
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isLayoutRTL()Z

    move-result p2

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    if-ne v0, v1, :cond_9

    goto :goto_1

    :cond_9
    move v3, v2

    :goto_1
    if-eq p2, v3, :cond_a

    neg-int p1, p1

    .line 719
    :cond_a
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    if-eq p2, p1, :cond_c

    .line 720
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 721
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    return-void

    .line 698
    :cond_b
    :goto_2
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 699
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method private updatePaddingsAndSizeForWidthAnimation()V
    .locals 5

    .line 1633
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthIncrease:F

    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthDecrease:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 1634
    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterShift:I

    add-int/2addr v1, v2

    .line 1635
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1636
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->originalPaddingStart:I

    add-int/2addr v2, v1

    .line 1638
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->originalPaddingEnd:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v1

    .line 1640
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v0

    .line 1636
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/google/android/material/button/MaterialButton;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method public addOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearOnCheckedChangeListeners()V
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method getA11yClassName()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->accessibilityClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->accessibilityClassName:Ljava/lang/String;

    return-object v0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/widget/CompoundButton;

    goto :goto_0

    :cond_1
    const-class v0, Landroid/widget/Button;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAllowedWidthDecrease()I
    .locals 1

    .line 1564
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->allowedWidthDecrease:I

    return v0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 471
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 1186
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getCornerRadius()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCornerSpringForce()Landroidx/dynamicanimation/animation/SpringForce;
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getCornerSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconGravity()I
    .locals 1

    .line 1198
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    return v0
.end method

.method public getIconPadding()I
    .locals 1

    .line 817
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    .line 847
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getInsetBottom()I
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getInsetBottom()I

    move-result v0

    return v0
.end method

.method public getInsetTop()I
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getInsetTop()I

    move-result v0

    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1060
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2

    .line 1418
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0

    .line 1421
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStateListShapeAppearanceModel()Lcom/google/android/material/shape/StateListShapeAppearanceModel;
    .locals 2

    .line 1462
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStateListShapeAppearanceModel()Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    move-result-object v0

    return-object v0

    .line 1465
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to get StateListShapeAppearanceModel from a MaterialButton which has an overwritten background."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1102
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 1145
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getStrokeWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 417
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 423
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 454
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 459
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1331
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    return v0
.end method

.method public isOpticalCenterEnabled()Z
    .locals 1

    .line 1629
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterEnabled:Z

    return v0
.end method

.method public isToggleCheckedStateOnClick()Z
    .locals 1

    .line 1355
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isToggleCheckedStateOnClick()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$setOpticalCenterEnabled$0$com-google-android-material-button-MaterialButton(F)V
    .locals 1

    .line 0
    const v0, 0x3de147ae    # 0.11f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1603
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterShift:I

    if-eq v0, p1, :cond_0

    .line 1604
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterShift:I

    .line 1605
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updatePaddingsAndSizeForWidthAnimation()V

    .line 1606
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->invalidate()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setOpticalCenterEnabled$1$com-google-android-material-button-MaterialButton()V
    .locals 1

    .line 1616
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getOpticalCenterShift()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterShift:I

    .line 1617
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updatePaddingsAndSizeForWidthAnimation()V

    .line 1618
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 603
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onAttachedToWindow()V

    .line 605
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 607
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 606
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    .line 1259
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 1261
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    .line 1265
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1266
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 365
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 356
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 357
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isCheckable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 359
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 536
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    move-object p1, p0

    .line 541
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    .line 543
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 544
    iget p3, p1, Lcom/google/android/material/button/MaterialButton;->orientation:I

    const/high16 p4, -0x40800000    # -1.0f

    if-eq p3, p2, :cond_0

    .line 545
    iput p2, p1, Lcom/google/android/material/button/MaterialButton;->orientation:I

    .line 546
    iput p4, p1, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 548
    :cond_0
    iget p2, p1, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    cmpl-float p2, p2, p4

    if-nez p2, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 554
    iget-object p2, p1, Lcom/google/android/material/button/MaterialButton;->originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez p2, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/material/button/MaterialButtonGroup;

    if-eqz p2, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButtonGroup;

    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButtonGroup;->getButtonSizeChange()Lcom/google/android/material/shape/StateListSizeChange;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p2, p1, Lcom/google/android/material/button/MaterialButton;->originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 558
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p3, p1, Lcom/google/android/material/button/MaterialButton;->originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 559
    iget p3, p1, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    float-to-int p3, p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 560
    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    :cond_1
    iget p2, p1, Lcom/google/android/material/button/MaterialButton;->allowedWidthDecrease:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_4

    .line 566
    iget-object p2, p1, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconPadding()I

    move-result p2

    iget p4, p1, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez p4, :cond_3

    iget-object p4, p1, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    :cond_3
    add-int/2addr p2, p4

    .line 569
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p4

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextLayoutWidth()I

    move-result p5

    sub-int/2addr p4, p5

    sub-int/2addr p4, p2

    iput p4, p1, Lcom/google/android/material/button/MaterialButton;->allowedWidthDecrease:I

    .line 572
    :cond_4
    iget p2, p1, Lcom/google/android/material/button/MaterialButton;->originalPaddingStart:I

    if-ne p2, p3, :cond_5

    .line 573
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingStart()I

    move-result p2

    iput p2, p1, Lcom/google/android/material/button/MaterialButton;->originalPaddingStart:I

    .line 575
    :cond_5
    iget p2, p1, Lcom/google/android/material/button/MaterialButton;->originalPaddingEnd:I

    if-ne p2, p3, :cond_6

    .line 576
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingEnd()I

    move-result p2

    iput p2, p1, Lcom/google/android/material/button/MaterialButton;->originalPaddingEnd:I

    .line 578
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isInHorizontalButtonGroup()Z

    move-result p2

    iput-boolean p2, p1, Lcom/google/android/material/button/MaterialButton;->isInHorizontalButtonGroup:Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 381
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    if-nez v0, :cond_0

    .line 382
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 385
    :cond_0
    check-cast p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    .line 386
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 387
    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 373
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 374
    new-instance v1, Lcom/google/android/material/button/MaterialButton$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/button/MaterialButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 375
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    iput-boolean v0, v1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    return-object v1
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 597
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 598
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 1341
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->isToggleCheckedStateOnClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    .line 1345
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->performClick()Z

    move-result v0

    return v0
.end method

.method recoverOriginalLayoutParams()V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 584
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->originalLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, -0x40800000    # -1.0f

    .line 585
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 2

    .line 621
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->refreshDrawableState()V

    .line 622
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getDrawableState()[I

    move-result-object v0

    .line 624
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public removeOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V
    .locals 1

    .line 1292
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setA11yClassName(Ljava/lang/String;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->accessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 487
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundColor(I)V

    return-void

    .line 492
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundColor(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 512
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 514
    const-string v0, "MaterialButton"

    const-string v1, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    .line 522
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    .line 530
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 507
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 476
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1385
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCheckable(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1302
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCheckedInternal(Z)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 1157
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1

    .line 1171
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public setCornerSpringForce(Landroidx/dynamicanimation/animation/SpringForce;)V
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerSpringForce(Landroidx/dynamicanimation/animation/SpringForce;)V

    return-void
.end method

.method setDisplayedWidthDecrease(I)V
    .locals 1

    .line 1585
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->allowedWidthDecrease:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->displayedWidthDecrease:F

    .line 1586
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->updatePaddingsAndSizeForWidthAnimation()V

    .line 1587
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->invalidate()V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 613
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setElevation(F)V

    .line 614
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 861
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 862
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 863
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    :cond_0
    return-void
.end method

.method public setIconGravity(I)V
    .locals 1

    .line 1209
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    if-eq v0, p1, :cond_0

    .line 1210
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 1211
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    :cond_0
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    .line 801
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    if-eq v0, p1, :cond_0

    .line 802
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 803
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 881
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 832
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eq v0, p1, :cond_0

    .line 833
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    const/4 p1, 0x1

    .line 834
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_0
    return-void

    .line 829
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "iconSize cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 906
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 907
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 944
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    .line 945
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setInsetBottom(I)V
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setInsetBottom(I)V

    return-void
.end method

.method public setInsetTop(I)V
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setInsetTop(I)V

    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 790
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V
    .locals 0

    .line 1498
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

    return-void
.end method

.method public setOpticalCenterEnabled(Z)V
    .locals 1

    .line 1597
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1598
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->opticalCenterEnabled:Z

    if-eqz p1, :cond_0

    .line 1600
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    new-instance v0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerSizeChangeListener(Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;)V

    goto :goto_0

    .line 1610
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerSizeChangeListener(Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;)V

    .line 1614
    :goto_0
    new-instance p1, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

    if-eqz v0, :cond_0

    .line 1504
    invoke-interface {v0, p0, p1}, Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;->onPressedChanged(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 1506
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setPressed(Z)V

    const/4 p1, 0x0

    .line 1507
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->maybeAnimateSize(Z)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1031
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .line 1045
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 1398
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void

    .line 1401
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setShouldDrawSurfaceColorStroke(Z)V
    .locals 1

    .line 1515
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShouldDrawSurfaceColorStroke(Z)V

    :cond_0
    return-void
.end method

.method setSizeChange(Lcom/google/android/material/shape/StateListSizeChange;)V
    .locals 1

    .line 1549
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->sizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    if-eq v0, p1, :cond_0

    .line 1550
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->sizeChange:Lcom/google/android/material/shape/StateListSizeChange;

    const/4 p1, 0x1

    .line 1551
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->maybeAnimateSize(Z)V

    :cond_0
    return-void
.end method

.method public setStateListShapeAppearanceModel(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V
    .locals 2

    .line 1437
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1438
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getCornerSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1439
    invoke-virtual {p1}, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->createSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonHelper;->setCornerSpringForce(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStateListShapeAppearanceModel(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    return-void

    .line 1444
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to set StateListShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1073
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    .line 1088
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 1115
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    .line 1130
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 399
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 404
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 436
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 441
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setTextAlignment(I)V
    .locals 1

    .line 635
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTextAlignment(I)V

    .line 636
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    return-void
.end method

.method public setToggleCheckedStateOnClick(Z)V
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setToggleCheckedStateOnClick(Z)V

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 591
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->originalWidth:F

    .line 592
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setWidth(I)V

    return-void
.end method

.method setWidthChangeMax(I)V
    .locals 1

    .line 1556
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->widthChangeMax:I

    if-eq v0, p1, :cond_0

    .line 1557
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->widthChangeMax:I

    const/4 p1, 0x1

    .line 1558
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->maybeAnimateSize(Z)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1336
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method
