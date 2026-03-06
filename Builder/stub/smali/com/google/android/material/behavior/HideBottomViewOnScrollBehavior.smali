.class public Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "HideBottomViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;,
        Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$ScrollState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_ENTER_ANIMATION_DURATION_MS:I = 0xe1

.field private static final DEFAULT_EXIT_ANIMATION_DURATION_MS:I = 0xaf

.field private static final ENTER_ANIM_DURATION_ATTR:I

.field private static final ENTER_EXIT_ANIM_EASING_ATTR:I

.field private static final EXIT_ANIM_DURATION_ATTR:I

.field public static final STATE_SCROLLED_DOWN:I = 0x1

.field public static final STATE_SCROLLED_UP:I = 0x2


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private additionalHiddenOffsetY:I

.field private currentAnimator:Landroid/view/ViewPropertyAnimator;

.field private currentState:I

.field private disableOnTouchExploration:Z

.field private enterAnimDuration:I

.field private enterAnimInterpolator:Landroid/animation/TimeInterpolator;

.field private exitAnimDuration:I

.field private exitAnimInterpolator:Landroid/animation/TimeInterpolator;

.field private height:I

.field private final onScrollStateChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    sput v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ENTER_ANIM_DURATION_ATTR:I

    .line 85
    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    sput v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->EXIT_ANIM_DURATION_ATTR:I

    .line 86
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    sput v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ENTER_EXIT_ANIM_EASING_ATTR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->disableOnTouchExploration:Z

    const/4 v1, 0x2

    .line 116
    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 117
    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    const/4 p2, 0x1

    .line 104
    iput-boolean p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->disableOnTouchExploration:Z

    const/4 p2, 0x2

    .line 116
    iput p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 117
    iput p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method private animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IJ",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, p2

    .line 317
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 318
    invoke-virtual {p1, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 319
    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$2;

    invoke-direct {p2, p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$2;-><init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)V

    .line 320
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private disableIfTouchExplorationEnabled(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 163
    iget-object v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 164
    new-instance v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;-><init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method private updateCurrentState(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 306
    iput p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 307
    iget-object p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;

    .line 308
    iget v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    invoke-interface {v0, p1, v1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;->onStateChanged(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnScrollStateChangedListener(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearOnScrollStateChangedListeners()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public disableOnTouchExploration(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->disableOnTouchExploration:Z

    return-void
.end method

.method public isDisabledOnTouchExploration()Z
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->disableOnTouchExploration:Z

    return v0
.end method

.method public isScrolledDown()Z
    .locals 2

    .line 263
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isScrolledUp()Z
    .locals 2

    .line 226
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$disableIfTouchExplorationEnabled$0$com-google-android-material-behavior-HideBottomViewOnScrollBehavior(Landroid/view/View;Z)V
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->isScrolledDown()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 134
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ENTER_ANIM_DURATION_ATTR:I

    const/16 v2, 0xe1

    .line 133
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->enterAnimDuration:I

    .line 137
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->EXIT_ANIM_DURATION_ATTR:I

    const/16 v2, 0xaf

    .line 136
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->exitAnimDuration:I

    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ENTER_EXIT_ANIM_EASING_ATTR:I

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 139
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->enterAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 145
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 144
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->exitAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 148
    invoke-direct {p0, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->disableIfTouchExplorationEnabled(Landroid/view/View;)V

    .line 149
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    if-lez p5, :cond_0

    .line 218
    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;)V

    return-void

    :cond_0
    if-gez p5, :cond_1

    .line 220
    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const/4 p1, 0x2

    if-ne p5, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeOnScrollStateChangedListener(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAdditionalHiddenOffsetY(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 188
    iput p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    .line 190
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    add-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public slideDown(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 271
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;Z)V

    return-void
.end method

.method public slideDown(Landroid/view/View;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->isScrolledDown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->disableOnTouchExploration:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_2
    const/4 v0, 0x1

    .line 296
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->updateCurrentState(Landroid/view/View;I)V

    .line 297
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    iget v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    add-int v4, v0, v1

    if-eqz p2, :cond_3

    .line 299
    iget p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->exitAnimDuration:I

    int-to-long v5, p2

    iget-object v7, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->exitAnimInterpolator:Landroid/animation/TimeInterpolator;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    return-void

    :cond_3
    move-object v3, p1

    int-to-float p1, v4

    .line 301
    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public slideUp(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;Z)V

    return-void
.end method

.method public slideUp(Landroid/view/View;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->isScrolledUp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_1
    const/4 v0, 0x2

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->updateCurrentState(Landroid/view/View;I)V

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 255
    iget p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->enterAnimDuration:I

    int-to-long v4, p2

    iget-object v6, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->enterAnimInterpolator:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    return-void

    :cond_2
    move-object v2, p1

    int-to-float p1, v3

    .line 257
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
