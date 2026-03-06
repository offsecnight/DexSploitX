.class Lcom/system/DroidX/utils/CameraStreamer$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraStreamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/system/DroidX/utils/CameraStreamer;->startStream(Landroid/content/Context;ZLcom/system/DroidX/utils/CameraStreamer$StreamCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/system/DroidX/utils/CameraStreamer;

.field final synthetic val$streamCallback:Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;


# direct methods
.method constructor <init>(Lcom/system/DroidX/utils/CameraStreamer;Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;)V
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

    .line 103
    iput-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer$1;->this$0:Lcom/system/DroidX/utils/CameraStreamer;

    iput-object p2, p0, Lcom/system/DroidX/utils/CameraStreamer$1;->val$streamCallback:Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer$1;->this$0:Lcom/system/DroidX/utils/CameraStreamer;

    invoke-virtual {p1}, Lcom/system/DroidX/utils/CameraStreamer;->stopStream()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer$1;->val$streamCallback:Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;->onError(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer$1;->this$0:Lcom/system/DroidX/utils/CameraStreamer;

    invoke-virtual {p1}, Lcom/system/DroidX/utils/CameraStreamer;->stopStream()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer$1;->this$0:Lcom/system/DroidX/utils/CameraStreamer;

    invoke-static {v0, p1}, Lcom/system/DroidX/utils/CameraStreamer;->-$$Nest$fputcameraDevice(Lcom/system/DroidX/utils/CameraStreamer;Landroid/hardware/camera2/CameraDevice;)V

    const/4 v0, 0x1

    .line 108
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 109
    iget-object v2, p0, Lcom/system/DroidX/utils/CameraStreamer$1;->this$0:Lcom/system/DroidX/utils/CameraStreamer;

    invoke-static {v2}, Lcom/system/DroidX/utils/CameraStreamer;->-$$Nest$fgetimageReader(Lcom/system/DroidX/utils/CameraStreamer;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 110
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 111
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer$1;->this$0:Lcom/system/DroidX/utils/CameraStreamer;

    invoke-static {v0}, Lcom/system/DroidX/utils/CameraStreamer;->-$$Nest$fgetimageReader(Lcom/system/DroidX/utils/CameraStreamer;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/system/DroidX/utils/CameraStreamer$1$1;

    invoke-direct {v2, p0, v1}, Lcom/system/DroidX/utils/CameraStreamer$1$1;-><init>(Lcom/system/DroidX/utils/CameraStreamer$1;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p0, Lcom/system/DroidX/utils/CameraStreamer$1;->this$0:Lcom/system/DroidX/utils/CameraStreamer;

    invoke-static {v1}, Lcom/system/DroidX/utils/CameraStreamer;->-$$Nest$fgethandler(Lcom/system/DroidX/utils/CameraStreamer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 132
    :catch_0
    iget-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer$1;->val$streamCallback:Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;

    const-string v0, "Camera setup failed"

    invoke-interface {p1, v0}, Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
