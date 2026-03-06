.class public final synthetic Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:F

.field public final synthetic f$7:F

.field public final synthetic f$8:Landroid/graphics/Matrix;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;FFFFFFFLandroid/graphics/Matrix;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iput p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$1:F

    iput p3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$2:F

    iput p4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$3:F

    iput p5, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$4:F

    iput p6, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$5:F

    iput p7, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$6:F

    iput p8, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$7:F

    iput-object p9, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$8:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$1:F

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$2:F

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$3:F

    iget v4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$4:F

    iget v5, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$5:F

    iget v6, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$6:F

    iget v7, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$7:F

    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$$ExternalSyntheticLambda0;->f$8:Landroid/graphics/Matrix;

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->lambda$createDefaultAnimator$0$com-google-android-material-floatingactionbutton-FloatingActionButtonImpl(FFFFFFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator;)V

    return-void
.end method
