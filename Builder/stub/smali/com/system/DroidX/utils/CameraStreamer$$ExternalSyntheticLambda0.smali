.class public final synthetic Lcom/system/DroidX/utils/CameraStreamer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Lcom/system/DroidX/utils/CameraStreamer;


# direct methods
.method public synthetic constructor <init>(Lcom/system/DroidX/utils/CameraStreamer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer$$ExternalSyntheticLambda0;->f$0:Lcom/system/DroidX/utils/CameraStreamer;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer$$ExternalSyntheticLambda0;->f$0:Lcom/system/DroidX/utils/CameraStreamer;

    invoke-virtual {v0, p1}, Lcom/system/DroidX/utils/CameraStreamer;->lambda$startStream$0$com-system-DroidX-utils-CameraStreamer(Landroid/media/ImageReader;)V

    return-void
.end method
