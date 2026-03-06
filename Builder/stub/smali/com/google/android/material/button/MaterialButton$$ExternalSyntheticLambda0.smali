.class public final synthetic Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public final onCornerSizeChange(F)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->lambda$setOpticalCenterEnabled$0$com-google-android-material-button-MaterialButton(F)V

    return-void
.end method
