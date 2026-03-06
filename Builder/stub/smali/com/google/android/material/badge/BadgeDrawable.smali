.class public Lcom/google/android/material/badge/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BadgeDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeDrawable$BadgeGravity;
    }
.end annotation


# static fields
.field public static final BADGE_CONTENT_NOT_TRUNCATED:I = -0x2

.field public static final BADGE_FIXED_EDGE_END:I = 0x1

.field public static final BADGE_FIXED_EDGE_START:I = 0x0

.field static final BADGE_RADIUS_NOT_SPECIFIED:I = -0x1

.field public static final BOTTOM_END:I = 0x800055
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BOTTOM_START:I = 0x800053
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX:Ljava/lang/String; = "+"

.field static final DEFAULT_EXCEED_MAX_BADGE_TEXT_SUFFIX:Ljava/lang/String; = "\u2026"

.field private static final DEFAULT_STYLE:I

.field private static final DEFAULT_THEME_ATTR:I

.field private static final FONT_SCALE_THRESHOLD:F = 0.3f

.field static final OFFSET_ALIGNMENT_MODE_EDGE:I = 0x0

.field static final OFFSET_ALIGNMENT_MODE_LEGACY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Badge"

.field public static final TOP_END:I = 0x800035

.field public static final TOP_START:I = 0x800033


# instance fields
.field private anchorViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final badgeBounds:Landroid/graphics/Rect;

.field private badgeCenterX:F

.field private badgeCenterY:F

.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private cornerRadius:F

.field private customBadgeParentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private halfBadgeHeight:F

.field private halfBadgeWidth:F

.field private maxBadgeNumber:I

.field private final shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final state:Lcom/google/android/material/badge/BadgeState;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Badge:I

    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    .line 170
    sget v0, Lcom/google/android/material/R$attr;->badgeStyle:I

    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V
    .locals 8

    .line 334
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 335
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 336
    invoke-static {p1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    .line 337
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 339
    new-instance v0, Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 340
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 343
    new-instance v2, Lcom/google/android/material/badge/BadgeState;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/badge/BadgeState;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    iput-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 344
    new-instance p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 348
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 349
    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getBadgeWithTextShapeAppearanceResId()I

    move-result p2

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getBadgeShapeAppearanceResId()I

    move-result p2

    .line 351
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 352
    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getBadgeWithTextShapeAppearanceOverlayResId()I

    move-result p3

    goto :goto_1

    .line 353
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getBadgeShapeAppearanceOverlayResId()I

    move-result p3

    .line 346
    :goto_1
    invoke-static {v3, p2, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    .line 354
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 355
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->restoreState()V

    return-void
.end method

.method private autoAdjustWithinGrandparentBounds(Landroid/view/View;)V
    .locals 2

    .line 1369
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1372
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1376
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1377
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->autoAdjustWithinViewBounds(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private autoAdjustWithinViewBounds(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    .line 1315
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1317
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 1318
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 1319
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    move v6, v0

    move-object v0, p1

    move p1, v6

    goto :goto_0

    :cond_0
    move p1, v1

    move v2, p1

    .line 1327
    :goto_0
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    if-eq v0, p2, :cond_2

    .line 1328
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 1329
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/view/ViewGroup;

    .line 1330
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1333
    :cond_1
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 1334
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr p1, v4

    .line 1335
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    .line 1336
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    goto :goto_2

    .line 1344
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->getTopCutOff(F)F

    move-result p2

    .line 1345
    invoke-direct {p0, v2}, Lcom/google/android/material/badge/BadgeDrawable;->getLeftCutOff(F)F

    move-result v3

    .line 1346
    check-cast v0, Landroid/view/View;

    .line 1347
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v4, p1}, Lcom/google/android/material/badge/BadgeDrawable;->getBottomCutOff(FF)F

    move-result p1

    .line 1348
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/badge/BadgeDrawable;->getRightCutoff(FF)F

    move-result v0

    cmpg-float v2, p2, v1

    if-gez v2, :cond_4

    .line 1352
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr v2, p2

    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    :cond_4
    cmpg-float p2, v3, v1

    if-gez p2, :cond_5

    .line 1355
    iget p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr p2, v2

    iput p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    :cond_5
    cmpl-float p2, p1, v1

    if-lez p2, :cond_6

    .line 1358
    iget p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    :cond_6
    cmpl-float p1, v0, v1

    if-lez p1, :cond_7

    .line 1361
    iget p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    :cond_7
    :goto_2
    return-void
.end method

.method private calculateCenterAndBounds(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 5

    .line 1220
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    :goto_0
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    .line 1222
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 1223
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    goto :goto_3

    .line 1226
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextWidth:F

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeWidth:F

    :goto_1
    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 1228
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextHeight:F

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeHeight:F

    :goto_2
    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 1233
    :goto_3
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1234
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeContent()Ljava/lang/String;

    move-result-object v0

    .line 1236
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1239
    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1240
    invoke-virtual {v4}, Lcom/google/android/material/badge/BadgeState;->getBadgeHorizontalPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 1237
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 1242
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1245
    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextHeight(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v2

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1246
    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeState;->getBadgeVerticalPadding()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 1243
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 1249
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 1252
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getTotalVerticalOffsetForState()I

    move-result v0

    .line 1254
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getBadgeGravity()I

    move-result v1

    const v3, 0x800053

    if-eq v1, v3, :cond_5

    const v4, 0x800055

    if-eq v1, v4, :cond_5

    .line 1262
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    goto :goto_4

    .line 1257
    :cond_5
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 1266
    :goto_4
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getTotalHorizontalOffsetForState()I

    move-result v0

    .line 1269
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getBadgeGravity()I

    move-result v1

    const v4, 0x800033

    if-eq v1, v4, :cond_9

    if-eq v1, v3, :cond_9

    .line 1283
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->badgeFixedEdge:I

    if-nez v1, :cond_7

    .line 1284
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_6

    .line 1285
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    goto :goto_5

    .line 1286
    :cond_6
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_5

    .line 1287
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_8

    .line 1288
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    mul-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    add-float/2addr p1, v1

    goto :goto_5

    .line 1289
    :cond_8
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr p1, v1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    mul-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    sub-float/2addr p1, v1

    :goto_5
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    goto :goto_7

    .line 1272
    :cond_9
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->badgeFixedEdge:I

    if-nez v1, :cond_b

    .line 1273
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_a

    .line 1274
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr p1, v1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    mul-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    sub-float/2addr p1, v1

    goto :goto_6

    .line 1275
    :cond_a
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    mul-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    add-float/2addr p1, v1

    goto :goto_6

    .line 1276
    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_c

    .line 1277
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_6

    .line 1278
    :cond_c
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    :goto_6
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 1293
    :goto_7
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {p1}, Lcom/google/android/material/badge/BadgeState;->isAutoAdjustedToGrandparentBounds()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1294
    invoke-direct {p0, p2}, Lcom/google/android/material/badge/BadgeDrawable;->autoAdjustWithinGrandparentBounds(Landroid/view/View;)V

    return-void

    :cond_d
    const/4 p1, 0x0

    .line 1296
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/badge/BadgeDrawable;->autoAdjustWithinViewBounds(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 6

    .line 266
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable;

    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    sget v4, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    return-object v0
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 6

    .line 283
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable;

    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    sget v4, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    return-object v0
.end method

.method static createFromSavedState(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 6

    .line 260
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable;

    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    sget v4, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    const/4 v2, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    return-object v0
.end method

.method private drawBadgeContent(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1428
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1430
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1431
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1432
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x0

    .line 1433
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1442
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1443
    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 1446
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gtz v1, :cond_0

    float-to-int v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 1447
    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 1443
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private getBadgeContent()Ljava/lang/String;
    .locals 1

    .line 1457
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getTextBadgeText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1459
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1460
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumberBadgeText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getBottomCutOff(FF)F
    .locals 2

    .line 1412
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    add-float/2addr v0, v1

    sub-float/2addr v0, p1

    add-float/2addr v0, p2

    return v0
.end method

.method private getEmptyContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionNumberless()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getLeftCutOff(F)F
    .locals 2

    .line 1400
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private getNumberBadgeText()Ljava/lang/String;
    .locals 4

    .line 1493
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1498
    const-string v0, ""

    return-object v0

    .line 1501
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1502
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getNumberLocale()Ljava/util/Locale;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_suffix:I

    .line 1503
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    .line 1504
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "+"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1501
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1494
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumberLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNumberContentDescription()Ljava/lang/String;
    .locals 4

    .line 787
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionQuantityStrings()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 788
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-object v1

    .line 792
    :cond_0
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 798
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 799
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionExceedsMaxBadgeNumberStringResource()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 798
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 794
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 796
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionQuantityStrings()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 795
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method private getRightCutoff(FF)F
    .locals 2

    .line 1424
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr v0, v1

    sub-float/2addr v0, p1

    add-float/2addr v0, p2

    return v0
.end method

.method private getTextBadgeText()Ljava/lang/String;
    .locals 4

    .line 1468
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1469
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getMaxCharacterCount()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 1474
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 1475
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-nez v2, :cond_1

    .line 1477
    const-string v0, ""

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    .line 1480
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1481
    sget v1, Lcom/google/android/material/R$string;->m3_exceed_max_badge_text_suffix:I

    .line 1482
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u2026"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1481
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getTextContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getContentDescriptionForText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTopCutOff(F)F
    .locals 2

    .line 1389
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    sub-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private getTotalHorizontalOffsetForState()I
    .locals 3

    .line 1209
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithText()I

    move-result v0

    goto :goto_0

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithoutText()I

    move-result v0

    .line 1213
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->offsetAlignmentMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1214
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->horizontalInsetWithText:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->horizontalInset:I

    :goto_1
    add-int/2addr v0, v1

    .line 1216
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getAdditionalHorizontalOffset()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTotalVerticalOffsetForState()I
    .locals 5

    .line 1183
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithoutText()I

    move-result v0

    .line 1184
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithText()I

    move-result v0

    .line 1186
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1190
    invoke-static {v1}, Lcom/google/android/material/resources/MaterialResources;->getFontScale(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    .line 1189
    invoke-static {v3, v2, v4, v2, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v1

    .line 1191
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 1193
    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getLargeFontVerticalOffsetAdjustment()I

    move-result v2

    sub-int v2, v0, v2

    .line 1192
    invoke-static {v0, v2, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v0

    .line 1201
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->offsetAlignmentMode:I

    if-nez v1, :cond_1

    .line 1202
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1204
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getAdditionalVerticalOffset()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private hasBadgeContent()Z
    .locals 1

    .line 1452
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasText()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private onAlphaUpdated()V
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 692
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method private onBackgroundColorUpdated()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBackgroundColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 445
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 446
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method private onBadgeContentUpdated()V
    .locals 2

    .line 1510
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextSizeDirty(Z)V

    .line 1511
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    .line 1512
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 1513
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method private onBadgeGravityUpdated()V
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 665
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 664
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method

.method private onBadgeShapeAppearanceUpdated()V
    .locals 4

    .line 1132
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1136
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 1139
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1140
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getBadgeWithTextShapeAppearanceResId()I

    move-result v2

    goto :goto_0

    .line 1141
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getBadgeShapeAppearanceResId()I

    move-result v2

    .line 1142
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1143
    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeState;->getBadgeWithTextShapeAppearanceOverlayResId()I

    move-result v3

    goto :goto_1

    .line 1144
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeState;->getBadgeShapeAppearanceOverlayResId()I

    move-result v3

    .line 1137
    :goto_1
    invoke-static {v0, v2, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 1136
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 1146
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method private onBadgeTextAppearanceUpdated()V
    .locals 3

    .line 1073
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1077
    :cond_0
    new-instance v1, Lcom/google/android/material/resources/TextAppearance;

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v2}, Lcom/google/android/material/badge/BadgeState;->getTextAppearanceResId()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 1078
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v2

    if-ne v2, v1, :cond_1

    :goto_0
    return-void

    .line 1081
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    .line 1082
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeTextColorUpdated()V

    .line 1083
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 1084
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method private onBadgeTextColorUpdated()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->getBadgeTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 476
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method private onMaxBadgeLengthUpdated()V
    .locals 2

    .line 635
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateMaxBadgeNumber()V

    .line 636
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextSizeDirty(Z)V

    .line 637
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 638
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method private onNumberUpdated()V
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeContentUpdated()V

    :cond_0
    return-void
.end method

.method private onTextUpdated()V
    .locals 0

    .line 585
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeContentUpdated()V

    return-void
.end method

.method private onVisibilityUpdated()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    .line 297
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->setVisible(ZZ)Z

    return-void
.end method

.method private restoreState()V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    .line 315
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeTextAppearanceUpdated()V

    .line 317
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onMaxBadgeLengthUpdated()V

    .line 319
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeContentUpdated()V

    .line 320
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onAlphaUpdated()V

    .line 321
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBackgroundColorUpdated()V

    .line 322
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeTextColorUpdated()V

    .line 323
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeGravityUpdated()V

    .line 325
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 326
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onVisibilityUpdated()V

    return-void
.end method

.method private static updateAnchorParentToNotClip(Landroid/view/View;)V
    .locals 1

    .line 415
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 416
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 417
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private updateCenterAndBounds()V
    .locals 6

    .line 1150
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1151
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    goto :goto_1

    .line 1155
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1156
    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1158
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1160
    invoke-virtual {v1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1162
    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_2
    if-eqz v2, :cond_3

    .line 1165
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1168
    :cond_3
    invoke-direct {p0, v3, v1}, Lcom/google/android/material/badge/BadgeDrawable;->calculateCenterAndBounds(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1170
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/material/badge/BadgeUtils;->updateBadgeBounds(Landroid/graphics/Rect;FFFF)V

    .line 1174
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    .line 1175
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v2, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 1177
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1178
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateMaxBadgeNumber()V
    .locals 4

    .line 1517
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getMaxCharacterCount()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 1520
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getMaxCharacterCount()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    return-void

    .line 1522
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getMaxNumber()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    return-void
.end method


# virtual methods
.method public clearNumber()V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->clearNumber()V

    .line 531
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onNumberUpdated()V

    :cond_0
    return-void
.end method

.method public clearText()V
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->clearText()V

    .line 579
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onTextUpdated()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 714
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 719
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->drawBadgeContent(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method getAdditionalHorizontalOffset()I
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getAdditionalHorizontalOffset()I

    move-result v0

    return v0
.end method

.method getAdditionalVerticalOffset()I
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getAdditionalVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBadgeGravity()I
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeGravity()I

    move-result v0

    return v0
.end method

.method public getBadgeNumberLocale()Ljava/util/Locale;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumberLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getBadgeTextColor()I
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 773
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getTextContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 778
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumberContentDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 781
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getEmptyContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCustomBadgeParent()Landroid/widget/FrameLayout;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithoutText()I

    move-result v0

    return v0
.end method

.method public getHorizontalOffsetWithText()I
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithText()I

    move-result v0

    return v0
.end method

.method public getHorizontalOffsetWithoutText()I
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getHorizontalOffsetWithoutText()I

    move-result v0

    return v0
.end method

.method public getHorizontalPadding()I
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeHorizontalPadding()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getLargeFontVerticalOffsetAdjustment()I
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getLargeFontVerticalOffsetAdjustment()I

    move-result v0

    return v0
.end method

.method public getMaxCharacterCount()I
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getMaxCharacterCount()I

    move-result v0

    return v0
.end method

.method public getMaxNumber()I
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getMaxNumber()I

    move-result v0

    return v0
.end method

.method public getNumber()I
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumber()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method getSavedState()Lcom/google/android/material/badge/BadgeState$State;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getOverridingState()Lcom/google/android/material/badge/BadgeState$State;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithoutText()I

    move-result v0

    return v0
.end method

.method public getVerticalOffsetWithText()I
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithText()I

    move-result v0

    return v0
.end method

.method public getVerticalOffsetWithoutText()I
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getVerticalOffsetWithoutText()I

    move-result v0

    return v0
.end method

.method public getVerticalPadding()I
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeVerticalPadding()I

    move-result v0

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasText()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->hasText()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 737
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public onTextSizeChange()V
    .locals 0

    .line 732
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method setAdditionalHorizontalOffset(I)V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setAdditionalHorizontalOffset(I)V

    .line 932
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method setAdditionalVerticalOffset(I)V
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setAdditionalVerticalOffset(I)V

    .line 1033
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setAlpha(I)V

    .line 687
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onAlphaUpdated()V

    return-void
.end method

.method public setAutoAdjustToWithinGrandparentBounds(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1052
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->isAutoAdjustedToGrandparentBounds()Z

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setAutoAdjustToGrandparentBounds(Z)V

    .line 1056
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1057
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->autoAdjustWithinGrandparentBounds(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBackgroundColor(I)V

    .line 439
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBackgroundColorUpdated()V

    return-void
.end method

.method public setBadgeFixedEdge(I)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeFixedEdge:I

    if-eq v0, p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iput p1, v0, Lcom/google/android/material/badge/BadgeState;->badgeFixedEdge:I

    .line 309
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    :cond_0
    return-void
.end method

.method public setBadgeGravity(I)V
    .locals 2

    const v0, 0x800053

    if-eq p1, v0, :cond_0

    const v0, 0x800055

    if-ne p1, v0, :cond_1

    .line 654
    :cond_0
    const-string v0, "Badge"

    const-string v1, "Bottom badge gravities are deprecated; please use a top gravity instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeGravity()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 657
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeGravity(I)V

    .line 658
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeGravityUpdated()V

    :cond_2
    return-void
.end method

.method public setBadgeNumberLocale(Ljava/util/Locale;)V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumberLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setNumberLocale(Ljava/util/Locale;)V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBadgeTextColor(I)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeTextColor(I)V

    .line 470
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeTextColorUpdated()V

    :cond_0
    return-void
.end method

.method public setBadgeWithTextShapeAppearance(I)V
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeWithTextShapeAppearanceResId(I)V

    .line 1117
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    return-void
.end method

.method public setBadgeWithTextShapeAppearanceOverlay(I)V
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeWithTextShapeAppearanceOverlayResId(I)V

    .line 1128
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    return-void
.end method

.method public setBadgeWithoutTextShapeAppearance(I)V
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeShapeAppearanceResId(I)V

    .line 1095
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    return-void
.end method

.method public setBadgeWithoutTextShapeAppearanceOverlay(I)V
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeShapeAppearanceOverlayResId(I)V

    .line 1106
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setContentDescriptionExceedsMaxBadgeNumberStringResource(I)V
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setContentDescriptionExceedsMaxBadgeNumberStringResource(I)V

    return-void
.end method

.method public setContentDescriptionForText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setContentDescriptionForText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescriptionNumberless(Ljava/lang/CharSequence;)V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setContentDescriptionNumberless(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescriptionQuantityStringsResource(I)V
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setContentDescriptionQuantityStringsResource(I)V

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 869
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setHorizontalOffsetWithoutText(I)V

    .line 870
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setHorizontalOffsetWithText(I)V

    return-void
.end method

.method public setHorizontalOffsetWithText(I)V
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setHorizontalOffsetWithText(I)V

    .line 913
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method public setHorizontalOffsetWithoutText(I)V
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setHorizontalOffsetWithoutText(I)V

    .line 893
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeHorizontalPadding()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeHorizontalPadding(I)V

    .line 830
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    :cond_0
    return-void
.end method

.method public setLargeFontVerticalOffsetAdjustment(I)V
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setLargeFontVerticalOffsetAdjustment(I)V

    .line 1013
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method public setMaxCharacterCount(I)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getMaxCharacterCount()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setMaxCharacterCount(I)V

    .line 607
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onMaxBadgeLengthUpdated()V

    :cond_0
    return-void
.end method

.method public setMaxNumber(I)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getMaxNumber()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 629
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setMaxNumber(I)V

    .line 630
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onMaxBadgeLengthUpdated()V

    :cond_0
    return-void
.end method

.method public setNumber(I)V
    .locals 1

    const/4 v0, 0x0

    .line 520
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 521
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getNumber()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setNumber(I)V

    .line 523
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onNumberUpdated()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setText(Ljava/lang/String;)V

    .line 569
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onTextUpdated()V

    :cond_0
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setTextAppearanceResId(I)V

    .line 1069
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeTextAppearanceUpdated()V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 947
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setVerticalOffsetWithoutText(I)V

    .line 948
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setVerticalOffsetWithText(I)V

    return-void
.end method

.method public setVerticalOffsetWithText(I)V
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setVerticalOffsetWithText(I)V

    .line 991
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method public setVerticalOffsetWithoutText(I)V
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setVerticalOffsetWithoutText(I)V

    .line 971
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method public setVerticalPadding(I)V
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->getBadgeVerticalPadding()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setBadgeVerticalPadding(I)V

    .line 851
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->setVisible(Z)V

    .line 292
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onVisibilityUpdated()V

    return-void
.end method

.method public updateBadgeCoordinates(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public updateBadgeCoordinates(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 375
    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    .line 373
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "customBadgeParent must be a FrameLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 400
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 401
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 403
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable;->updateAnchorParentToNotClip(Landroid/view/View;)V

    .line 404
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 405
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method
