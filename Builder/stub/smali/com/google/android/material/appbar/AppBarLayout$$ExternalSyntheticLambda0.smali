.class public final synthetic Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic f$1:Landroid/content/res/ColorStateList;

.field public final synthetic f$2:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public final synthetic f$3:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/content/res/ColorStateList;Lcom/google/android/material/shape/MaterialShapeDrawable;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iput-object p4, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/material/appbar/AppBarLayout;->lambda$initializeLiftOnScrollWithColor$0$com-google-android-material-appbar-AppBarLayout(Landroid/content/res/ColorStateList;Lcom/google/android/material/shape/MaterialShapeDrawable;Ljava/lang/Integer;Landroid/animation/ValueAnimator;)V

    return-void
.end method
