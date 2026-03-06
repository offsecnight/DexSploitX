.class Lcom/system/DroidX/utils/CameraStreamer$1$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraStreamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/system/DroidX/utils/CameraStreamer$1;->onOpened(Landroid/hardware/camera2/CameraDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/system/DroidX/utils/CameraStreamer$1;

.field final synthetic val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Lcom/system/DroidX/utils/CameraStreamer$1;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer$1$1;->this$1:Lcom/system/DroidX/utils/CameraStreamer$1;

    iput-object p2, p0, Lcom/system/DroidX/utils/CameraStreamer$1$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer$1$1;->this$1:Lcom/system/DroidX/utils/CameraStreamer$1;

    iget-object p1, p1, Lcom/system/DroidX/utils/CameraStreamer$1;->val$streamCallback:Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;

    const-string v0, "Camera session failed"

    invoke-interface {p1, v0}, Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer$1$1;->this$1:Lcom/system/DroidX/utils/CameraStreamer$1;

    iget-object v0, v0, Lcom/system/DroidX/utils/CameraStreamer$1;->this$0:Lcom/system/DroidX/utils/CameraStreamer;

    invoke-static {v0, p1}, Lcom/system/DroidX/utils/CameraStreamer;->-$$Nest$fputcaptureSession(Lcom/system/DroidX/utils/CameraStreamer;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer$1$1;->val$builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/system/DroidX/utils/CameraStreamer$1$1;->this$1:Lcom/system/DroidX/utils/CameraStreamer$1;

    iget-object v1, v1, Lcom/system/DroidX/utils/CameraStreamer$1;->this$0:Lcom/system/DroidX/utils/CameraStreamer;

    invoke-static {v1}, Lcom/system/DroidX/utils/CameraStreamer;->-$$Nest$fgethandler(Lcom/system/DroidX/utils/CameraStreamer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 120
    const-string p1, "CameraStreamer"

    const-string v0, "Live streaming started successfully!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 122
    :catch_0
    iget-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer$1$1;->this$1:Lcom/system/DroidX/utils/CameraStreamer$1;

    iget-object p1, p1, Lcom/system/DroidX/utils/CameraStreamer$1;->val$streamCallback:Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;

    const-string v0, "Failed to start stream"

    invoke-interface {p1, v0}, Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
