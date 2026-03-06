.class public Lcom/system/DroidX/utils/CameraStreamer;
.super Ljava/lang/Object;
.source "CameraStreamer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraStreamer"


# instance fields
.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private captureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private handler:Landroid/os/Handler;

.field private imageReader:Landroid/media/ImageReader;

.field private isStreaming:Z

.field private tcpOutputStream:Ljava/io/OutputStream;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lcom/system/DroidX/utils/CameraStreamer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/system/DroidX/utils/CameraStreamer;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageReader(Lcom/system/DroidX/utils/CameraStreamer;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/system/DroidX/utils/CameraStreamer;->imageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcameraDevice(Lcom/system/DroidX/utils/CameraStreamer;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcaptureSession(Lcom/system/DroidX/utils/CameraStreamer;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->isStreaming:Z

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private convertYuvToJpeg(Landroid/media/Image;)[B
    .locals 16

    .line 155
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    .line 159
    aget-object v1, v0, v7

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    .line 160
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v6, 0x2

    .line 161
    aget-object v8, v0, v6

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 163
    aget-object v9, v0, v7

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    .line 164
    aget-object v10, v0, v2

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 165
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    mul-int v2, v4, v5

    mul-int/lit8 v2, v2, 0x3

    .line 167
    div-int/2addr v2, v6

    new-array v2, v2, [B

    move v6, v7

    move v11, v6

    :goto_0
    if-ge v6, v5, :cond_0

    mul-int v12, v6, v9

    .line 172
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 173
    invoke-virtual {v1, v2, v11, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v11, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 178
    :cond_0
    div-int/lit8 v1, v5, 0x2

    .line 179
    div-int/lit8 v6, v4, 0x2

    move v9, v7

    :goto_1
    if-ge v9, v1, :cond_2

    move v12, v7

    :goto_2
    if-ge v12, v6, :cond_1

    mul-int v13, v9, v10

    mul-int v14, v12, v0

    add-int/2addr v13, v14

    add-int/lit8 v14, v11, 0x1

    .line 183
    invoke-virtual {v8, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    aput-byte v15, v2, v11

    add-int/lit8 v11, v11, 0x2

    .line 184
    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    aput-byte v13, v2, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 188
    :cond_2
    new-instance v1, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 189
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x3c

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 191
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "YUV to JPEG failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraStreamer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private sendFrameToServer([B)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->tcpOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->isStreaming:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/system/DroidX/utils/CameraStreamer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/system/DroidX/utils/CameraStreamer$$ExternalSyntheticLambda1;-><init>(Lcom/system/DroidX/utils/CameraStreamer;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$sendFrameToServer$1$com-system-DroidX-utils-CameraStreamer([B)V
    .locals 3

    .line 0
    const-string v0, "CAM:"

    .line 204
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/system/DroidX/utils/CameraStreamer;->tcpOutputStream:Ljava/io/OutputStream;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :try_start_1
    iget-object v2, p0, Lcom/system/DroidX/utils/CameraStreamer;->tcpOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 207
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->tcpOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 208
    iget-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer;->tcpOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 209
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method synthetic lambda$startStream$0$com-system-DroidX-utils-CameraStreamer(Landroid/media/ImageReader;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-boolean p1, p0, Lcom/system/DroidX/utils/CameraStreamer;->isStreaming:Z

    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0, v0}, Lcom/system/DroidX/utils/CameraStreamer;->convertYuvToJpeg(Landroid/media/Image;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    array-length v1, p1

    if-lez v1, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/system/DroidX/utils/CameraStreamer;->sendFrameToServer([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 100
    :cond_1
    throw p1

    :catch_0
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_2
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer;->tcpOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public startStream(Landroid/content/Context;ZLcom/system/DroidX/utils/CameraStreamer$StreamCallback;)V
    .locals 7

    .line 44
    iget-boolean v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->isStreaming:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/system/DroidX/utils/CameraStreamer;->stopStream()V

    const-wide/16 v0, 0x12c

    .line 46
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->isStreaming:Z

    if-eqz p2, :cond_1

    .line 50
    const-string v1, "Front"

    goto :goto_0

    :cond_1
    const-string v1, "Back"

    :goto_0
    const-string v2, "Starting TCP camera stream | Camera: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraStreamer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :try_start_1
    const-string v1, "camera"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    xor-int/2addr p2, v0

    .line 58
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 59
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 60
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 61
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    .line 68
    const-string p1, "Camera not found"

    invoke-interface {p3, p1}, Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;->onError(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 72
    :cond_4
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    .line 73
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v0, 0x23

    .line 74
    invoke-virtual {p2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    .line 77
    new-instance p2, Landroid/util/Size;

    const/16 v1, 0x140

    const/16 v3, 0xf0

    invoke-direct {p2, v1, v3}, Landroid/util/Size;-><init>(II)V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected resolution: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraStreamThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/system/DroidX/utils/CameraStreamer;->thread:Landroid/os/HandlerThread;

    .line 82
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/system/DroidX/utils/CameraStreamer;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/system/DroidX/utils/CameraStreamer;->handler:Landroid/os/Handler;

    .line 85
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    const/4 v2, 0x3

    invoke-static {v1, p2, v0, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/system/DroidX/utils/CameraStreamer;->imageReader:Landroid/media/ImageReader;

    .line 86
    new-instance v0, Lcom/system/DroidX/utils/CameraStreamer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/system/DroidX/utils/CameraStreamer$$ExternalSyntheticLambda0;-><init>(Lcom/system/DroidX/utils/CameraStreamer;)V

    iget-object v1, p0, Lcom/system/DroidX/utils/CameraStreamer;->handler:Landroid/os/Handler;

    invoke-virtual {p2, v0, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 103
    new-instance p2, Lcom/system/DroidX/utils/CameraStreamer$1;

    invoke-direct {p2, p0, p3}, Lcom/system/DroidX/utils/CameraStreamer$1;-><init>(Lcom/system/DroidX/utils/CameraStreamer;Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;)V

    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v4, p2, v0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Setup failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;->onError(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public stopStream()V
    .locals 2

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->isStreaming:Z

    .line 218
    const-string v0, "CameraStreamer"

    const-string v1, "Stopping camera stream..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 222
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 223
    iput-object v1, p0, Lcom/system/DroidX/utils/CameraStreamer;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 227
    iput-object v1, p0, Lcom/system/DroidX/utils/CameraStreamer;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->imageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 231
    iput-object v1, p0, Lcom/system/DroidX/utils/CameraStreamer;->imageReader:Landroid/media/ImageReader;

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 234
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 235
    iput-object v1, p0, Lcom/system/DroidX/utils/CameraStreamer;->thread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
