.class Lcom/google/android/material/search/SearchViewAnimationHelper;
.super Ljava/lang/Object;
.source "SearchViewAnimationHelper.java"


# static fields
.field private static final CONTENT_FROM_SCALE:F = 0.95f

.field private static final HIDE_CLEAR_BUTTON_ALPHA_DURATION_MS:J = 0x2aL

.field private static final HIDE_CLEAR_BUTTON_ALPHA_START_DELAY_MS:J = 0x0L

.field private static final HIDE_CONTENT_ALPHA_DURATION_MS:J = 0x53L

.field private static final HIDE_CONTENT_ALPHA_START_DELAY_MS:J = 0x0L

.field private static final HIDE_CONTENT_SCALE_DURATION_MS:J = 0xfaL

.field private static final HIDE_DURATION_MS:J = 0xfaL

.field private static final HIDE_TRANSLATE_DURATION_MS:J = 0x12cL

.field private static final SHOW_CLEAR_BUTTON_ALPHA_DURATION_MS:J = 0x32L

.field private static final SHOW_CLEAR_BUTTON_ALPHA_START_DELAY_MS:J = 0xfaL

.field private static final SHOW_CONTENT_ALPHA_DURATION_MS:J = 0x96L

.field private static final SHOW_CONTENT_ALPHA_START_DELAY_MS:J = 0x4bL

.field private static final SHOW_CONTENT_SCALE_DURATION_MS:J = 0x12cL

.field private static final SHOW_DURATION_MS:J = 0x12cL

.field private static final SHOW_SCRIM_ALPHA_DURATION_MS:J = 0x64L

.field private static final SHOW_TRANSLATE_DURATION_MS:J = 0x15eL

.field private static final SHOW_TRANSLATE_KEYBOARD_START_DELAY_MS:J = 0x96L


# instance fields
.field private final backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

.field private backProgressAnimatorSet:Landroid/animation/AnimatorSet;

.field private final clearButton:Landroid/widget/ImageButton;

.field private final contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

.field private final divider:Landroid/view/View;

.field private final dummyToolbar:Landroidx/appcompat/widget/Toolbar;

.field private final editText:Landroid/widget/EditText;

.field private final headerContainer:Landroid/widget/FrameLayout;

.field private final rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

.field private final scrim:Landroid/view/View;

.field private searchBar:Lcom/google/android/material/search/SearchBar;

.field private final searchPrefix:Landroid/widget/TextView;

.field private final searchView:Lcom/google/android/material/search/SearchView;

.field private final textContainer:Landroid/widget/LinearLayout;

.field private final toolbar:Landroidx/appcompat/widget/Toolbar;

.field private final toolbarContainer:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 112
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->scrim:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->scrim:Landroid/view/View;

    .line 113
    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 114
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->headerContainer:Landroid/widget/FrameLayout;

    .line 115
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->toolbarContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    .line 116
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 117
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 118
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchPrefix:Landroid/widget/TextView;

    .line 119
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    .line 120
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->clearButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    .line 121
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->divider:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    .line 122
    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    .line 123
    iget-object p1, p1, Lcom/google/android/material/search/SearchView;->textContainer:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->textContainer:Landroid/widget/LinearLayout;

    .line 125
    new-instance p1, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    invoke-direct {p1, v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setContentViewsAlpha(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/motion/MaterialMainContainerBackHelper;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    return-object p0
.end method

.method private addActionMenuViewAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .locals 8

    .line 523
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-static {v1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v1

    .line 531
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationXBetweenViews(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 530
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 532
    new-array v6, v1, [Landroid/view/View;

    aput-object v0, v6, v4

    .line 533
    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v6

    .line 532
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 535
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    move-result v6

    int-to-float v6, v6

    new-array v7, v2, [F

    aput v6, v7, v4

    aput v5, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 536
    new-array v6, v1, [Landroid/view/View;

    aput-object v0, v6, v4

    .line 537
    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v0

    .line 536
    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 539
    new-array v0, v2, [Landroid/animation/Animator;

    aput-object v3, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private addBackButtonAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/widget/ImageButton;)V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 487
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 488
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda8;-><init>(Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x1

    .line 490
    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 471
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v2}, Lcom/google/android/material/search/SearchView;->isAnimatedNavigationIcon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addDrawerArrowDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V

    .line 473
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addFadeThroughDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V

    .line 474
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/widget/ImageButton;)V

    return-void

    .line 476
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setFullDrawableProgressIfNeeded(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private addBackButtonTranslationAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .locals 8

    .line 447
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-static {v1}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    .line 455
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationXBetweenViews(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 454
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 456
    new-array v6, v1, [Landroid/view/View;

    aput-object v0, v6, v4

    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 458
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    move-result v6

    int-to-float v6, v6

    new-array v7, v2, [F

    aput v6, v7, v4

    aput v5, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 459
    new-array v6, v1, [Landroid/view/View;

    aput-object v0, v6, v4

    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 461
    new-array v0, v2, [Landroid/animation/Animator;

    aput-object v3, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private addDrawerArrowDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 494
    instance-of v0, p2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    if-eqz v0, :cond_0

    .line 495
    check-cast p2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v0, 0x2

    .line 496
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 497
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda2;-><init>(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x1

    .line 499
    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addEditTextClipAnimator(Landroid/animation/AnimatorSet;)V
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    .line 599
    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 600
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 602
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 601
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 603
    new-instance v2, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x1

    .line 608
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addFadeThroughDrawableAnimatorIfNeeded(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 504
    instance-of v0, p2, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz v0, :cond_0

    .line 505
    check-cast p2, Lcom/google/android/material/internal/FadeThroughDrawable;

    const/4 v0, 0x2

    .line 506
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 507
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/internal/FadeThroughDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x1

    .line 509
    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addTextFadeAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 617
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 618
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x1

    .line 623
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getActionMenuViewsAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    .line 559
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 560
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 561
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 562
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 561
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 564
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 565
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p1

    .line 566
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v1

    .line 567
    new-instance v2, Lcom/google/android/material/internal/FadeThroughUpdateListener;

    invoke-direct {v2, p1, v1}, Lcom/google/android/material/internal/FadeThroughUpdateListener;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getButtonsProgressAnimator(Z)Landroid/animation/AnimatorSet;
    .locals 3

    .line 428
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 429
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 430
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 431
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 432
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 431
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getButtonsTranslationAnimator(Z)Landroid/animation/AnimatorSet;
    .locals 3

    .line 437
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 438
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonTranslationAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    .line 439
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addActionMenuViewAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 440
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 441
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 442
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 441
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getClearButtonAnimator(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    .line 416
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x32

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x2a

    .line 417
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v1, 0xfa

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    .line 419
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 421
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 422
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 421
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p1, 0x1

    .line 423
    new-array p1, p1, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getContentAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x2

    .line 667
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x53

    .line 668
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x4b

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 670
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 672
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 673
    invoke-static {p1, v2}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 672
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 674
    new-array p1, v0, [Landroid/view/View;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    aput-object v2, p1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    aput-object v2, p1, v0

    .line 675
    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    .line 674
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getContentAnimator(Z)Landroid/animation/Animator;
    .locals 4

    .line 660
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    .line 661
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    .line 662
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getContentAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getDividerAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getContentScaleAnimator(Z)Landroid/animation/Animator;

    move-result-object p1

    aput-object p1, v1, v2

    .line 661
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private getContentScaleAnimator(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    .line 693
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 694
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 696
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 697
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 696
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p1, 0x1

    .line 698
    new-array p1, p1, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->scaleListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getDividerAnimator(Z)Landroid/animation/Animator;
    .locals 5

    .line 680
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    .line 681
    invoke-virtual {v0}, Lcom/google/android/material/internal/TouchObserverFrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x2

    .line 683
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_0

    const-wide/16 v3, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0xfa

    .line 684
    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 686
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 687
    invoke-static {p1, v3}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 686
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 688
    new-array p1, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1
.end method

.method private getDummyToolbarAnimator(Z)Landroid/animation/Animator;
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 546
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXEnd(Landroid/view/View;)I

    move-result v1

    .line 547
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    move-result v2

    .line 543
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(ZLandroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private getEditTextAnimator(Z)Landroid/animation/Animator;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimatorForText(ZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 6

    .line 279
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 280
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-array v1, v4, [Landroid/animation/Animator;

    .line 283
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getButtonsProgressAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getButtonsTranslationAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v1, v2

    .line 282
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    const/16 v1, 0xa

    .line 285
    new-array v1, v1, [Landroid/animation/Animator;

    .line 286
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getScrimAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v5

    aput-object v5, v1, v3

    .line 287
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getRootViewAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 288
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getClearButtonAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    .line 289
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getContentAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 290
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getHeaderContainerAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 291
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getDummyToolbarAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 292
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getActionMenuViewsAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 293
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getEditTextAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 294
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getSearchPrefixAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 295
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTextAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    .line 285
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 296
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$5;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getFromTranslationXEnd(Landroid/view/View;)I
    .locals 2

    .line 738
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    .line 739
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getViewLeftFromSearchViewParent(Landroid/view/View;)I

    move-result v0

    .line 740
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-static {v1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    sub-int/2addr v0, p1

    return v0

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getFromTranslationY()I
    .locals 3

    .line 746
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 747
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 748
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getViewTopFromSearchViewParent(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 749
    invoke-virtual {v2}, Lcom/google/android/material/search/SearchBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method private getHeaderContainerAnimator(Z)Landroid/animation/Animator;
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->headerContainer:Landroid/widget/FrameLayout;

    .line 554
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXEnd(Landroid/view/View;)I

    move-result v1

    .line 555
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    move-result v2

    .line 551
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(ZLandroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private getRootViewAnimator(Z)Landroid/animation/Animator;
    .locals 6

    .line 358
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    invoke-virtual {v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getInitialHideToClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    invoke-virtual {v1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getInitialHideFromClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->calculateOffsetRectFromBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 368
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 370
    iget-object v3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v3}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v3

    .line 371
    iget-object v4, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 372
    invoke-virtual {v4}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getCornerRadii()[F

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    invoke-virtual {v5}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getExpandedCornerRadii()[F

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/material/search/SearchViewAnimationHelper;->maxCornerRadii([F[F)[F

    move-result-object v4

    .line 374
    new-instance v5, Lcom/google/android/material/internal/RectEvaluator;

    invoke-direct {v5, v2}, Lcom/google/android/material/internal/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 375
    invoke-static {v5, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 376
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;F[FLandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x12c

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0xfa

    .line 383
    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 384
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 385
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 384
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getScrimAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 4

    if-eqz p1, :cond_0

    .line 347
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_0
    const/4 v1, 0x2

    .line 349
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0xfa

    .line 350
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x64

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    .line 351
    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 352
    invoke-static {p1, v0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p1, 0x1

    .line 353
    new-array p1, p1, [Landroid/view/View;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->scrim:Landroid/view/View;

    aput-object v2, p1, v0

    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSearchPrefixAnimator(Z)Landroid/animation/Animator;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchPrefix:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimatorForText(ZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private getTextAnimator(Z)Landroid/animation/AnimatorSet;
    .locals 3

    .line 583
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 584
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addTextFadeAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    .line 585
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addEditTextClipAnimator(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 586
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 587
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 588
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 587
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 4

    .line 263
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    .line 264
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationYAnimator()Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 265
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    .line 266
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 267
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x15e

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x12c

    .line 268
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private getTranslationAnimator(ZLandroid/view/View;II)Landroid/animation/Animator;
    .locals 5

    int-to-float p3, p3

    const/4 v0, 0x2

    .line 703
    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    const/4 v3, 0x0

    aput v3, v1, p3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 704
    new-array v4, p3, [Landroid/view/View;

    aput-object p2, v4, v2

    invoke-static {v4}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-float p4, p4

    .line 706
    new-array v4, v0, [F

    aput p4, v4, v2

    aput v3, v4, p3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 707
    new-array v3, p3, [Landroid/view/View;

    aput-object p2, v3, v2

    invoke-static {v3}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 709
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 710
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v2

    aput-object p4, v0, p3

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    const-wide/16 p3, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0xfa

    .line 711
    :goto_0
    invoke-virtual {p2, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 712
    sget-object p3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 713
    invoke-static {p1, p3}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 712
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method private getTranslationAnimatorForText(ZLandroid/view/View;)Landroid/animation/Animator;
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getPlaceholderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 635
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getViewLeftFromSearchViewParent(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 636
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(ZLandroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private getTranslationXBetweenViews(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    if-nez p1, :cond_1

    .line 722
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    .line 723
    iget-object p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p2}, Lcom/google/android/material/search/SearchBar;->getPaddingStart()I

    move-result p2

    .line 724
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getViewLeftFromSearchViewParent(Landroid/view/View;)I

    move-result v0

    .line 725
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-static {v1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    .line 727
    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 730
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->getRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    sub-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0

    .line 733
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getViewLeftFromSearchViewParent(Landroid/view/View;)I

    move-result p1

    .line 734
    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getViewLeftFromSearchViewParent(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method private getTranslationYAnimator()Landroid/animation/Animator;
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 274
    new-array v0, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1
.end method

.method private getViewLeftFromSearchViewParent(Landroid/view/View;)I
    .locals 2

    .line 640
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 641
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 642
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 643
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 644
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getViewTopFromSearchViewParent(Landroid/view/View;)I
    .locals 2

    .line 650
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 651
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 652
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 653
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 654
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static synthetic lambda$addBackButtonAnimatorIfNeeded$3(Landroid/widget/ImageButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 489
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method static synthetic lambda$addDrawerArrowDrawableAnimatorIfNeeded$4(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 498
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    return-void
.end method

.method static synthetic lambda$addFadeThroughDrawableAnimatorIfNeeded$5(Lcom/google/android/material/internal/FadeThroughDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 508
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    return-void
.end method

.method private static lerpCornerRadii(F[FF)[F
    .locals 18

    move/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 403
    aget v3, p1, v2

    .line 404
    invoke-static {v0, v3, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v3

    const/4 v4, 0x1

    aget v5, p1, v4

    .line 405
    invoke-static {v0, v5, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v5

    const/4 v6, 0x2

    aget v7, p1, v6

    .line 406
    invoke-static {v0, v7, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v7

    const/4 v8, 0x3

    aget v9, p1, v8

    .line 407
    invoke-static {v0, v9, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v9

    const/4 v10, 0x4

    aget v11, p1, v10

    .line 408
    invoke-static {v0, v11, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v11

    const/4 v12, 0x5

    aget v13, p1, v12

    .line 409
    invoke-static {v0, v13, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v13

    const/4 v14, 0x6

    aget v15, p1, v14

    .line 410
    invoke-static {v0, v15, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v15

    const/16 v16, 0x7

    move/from16 v17, v2

    aget v2, p1, v16

    .line 411
    invoke-static {v0, v2, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [F

    aput v3, v1, v17

    aput v5, v1, v4

    aput v7, v1, v6

    aput v9, v1, v8

    aput v11, v1, v10

    aput v13, v1, v12

    aput v15, v1, v14

    aput v0, v1, v16

    return-object v1
.end method

.method private static maxCornerRadii([F[F)[F
    .locals 17

    const/4 v0, 0x0

    .line 390
    aget v1, p0, v0

    aget v2, p1, v0

    .line 391
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    .line 392
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x2

    aget v5, p0, v4

    aget v6, p1, v4

    .line 393
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/4 v6, 0x3

    aget v7, p0, v6

    aget v8, p1, v6

    .line 394
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/4 v8, 0x4

    aget v9, p0, v8

    aget v10, p1, v8

    .line 395
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/4 v10, 0x5

    aget v11, p0, v10

    aget v12, p1, v10

    .line 396
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/4 v12, 0x6

    aget v13, p0, v12

    aget v14, p1, v12

    .line 397
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/4 v14, 0x7

    aget v15, p0, v14

    move/from16 v16, v0

    aget v0, p1, v14

    .line 398
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/16 v15, 0x8

    new-array v15, v15, [F

    aput v1, v15, v16

    aput v3, v15, v2

    aput v5, v15, v4

    aput v7, v15, v6

    aput v9, v15, v8

    aput v11, v15, v10

    aput v13, v15, v12

    aput v0, v15, v14

    return-object v15
.end method

.method private setActionMenuViewAlphaIfNeeded(F)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private setContentViewsAlpha(F)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 331
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 332
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/TouchObserverFrameLayout;->setAlpha(F)V

    .line 333
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setActionMenuViewAlphaIfNeeded(F)V

    return-void
.end method

.method private setFullDrawableProgressIfNeeded(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 514
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 515
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 517
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz v0, :cond_1

    .line 518
    check-cast p1, Lcom/google/android/material/internal/FadeThroughDrawable;

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    :cond_1
    return-void
.end method

.method private setMenuItemsNotClickable(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    .line 768
    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 770
    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 771
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 772
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 773
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 774
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUpDummyToolbarIfNeeded()V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 760
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setMenuItemsNotClickable(Landroidx/appcompat/widget/Toolbar;)V

    .line 761
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method private startHideAnimationCollapse()Landroid/animation/AnimatorSet;
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_0
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$2;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method private startHideAnimationTranslate()Landroid/animation/AnimatorSet;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_0
    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$4;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 258
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method private startShowAnimationExpand()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboardIfNeeded()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWING:Lcom/google/android/material/search/SearchView$TransitionState;

    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->setUpDummyToolbarIfNeeded()V

    .line 155
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startShowAnimationTranslate()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    .line 209
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/material/search/SearchView;)V

    const-wide/16 v2, 0x96

    .line 208
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/search/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cancelBackProgress()V
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0, v1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->cancelBackProgress(Landroid/view/View;)V

    .line 836
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    :cond_0
    const/4 v0, 0x0

    .line 839
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public finishBackProgress()V
    .locals 4

    .line 819
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->hide()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    .line 822
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->finishBackProgress(JLandroid/view/View;)V

    .line 824
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 825
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getButtonsTranslationAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 826
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_0
    const/4 v0, 0x0

    .line 829
    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method getBackHelper()Lcom/google/android/material/motion/MaterialMainContainerBackHelper;
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    return-object v0
.end method

.method hide()Landroid/animation/AnimatorSet;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startHideAnimationCollapse()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startHideAnimationTranslate()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$addEditTextClipAnimator$6$com-google-android-material-search-SearchViewAnimationHelper(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 605
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 606
    iget-object p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method synthetic lambda$addTextFadeAnimatorIfNeeded$7$com-google-android-material-search-SearchViewAnimationHelper(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    .line 621
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method synthetic lambda$getRootViewAnimator$2$com-google-android-material-search-SearchViewAnimationHelper(F[FLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 380
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    .line 379
    invoke-static {p1, p2, p4}, Lcom/google/android/material/search/SearchViewAnimationHelper;->lerpCornerRadii(F[FF)[F

    move-result-object p1

    .line 381
    iget-object p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {p2, p3, p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadii(Landroid/graphics/Rect;[F)V

    return-void
.end method

.method synthetic lambda$startShowAnimationExpand$0$com-google-android-material-search-SearchViewAnimationHelper()V
    .locals 2

    .line 0
    const/4 v0, 0x1

    .line 160
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$1;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method synthetic lambda$startShowAnimationTranslate$1$com-google-android-material-search-SearchViewAnimationHelper()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setTranslationY(F)V

    const/4 v0, 0x1

    .line 216
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 217
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$3;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onHandleBackInvoked()Landroidx/activity/BackEventCompat;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    invoke-virtual {v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->onHandleBackInvoked()Landroidx/activity/BackEventCompat;

    move-result-object v0

    return-object v0
.end method

.method setSearchBar(Lcom/google/android/material/search/SearchBar;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    return-void
.end method

.method show()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startShowAnimationExpand()V

    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->startShowAnimationTranslate()V

    return-void
.end method

.method startBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->startBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;)V

    return-void
.end method

.method public updateBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 3

    .line 785
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->updateBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;F)V

    .line 791
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_3

    .line 792
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 793
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    .line 797
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isAnimatedNavigationIcon()Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 803
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getButtonsProgressAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    .line 804
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 805
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->pause()V

    return-void

    .line 808
    :cond_3
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-long v1, p1

    .line 807
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    return-void
.end method
