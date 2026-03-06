.class public Lcom/system/DroidX/utils/DeviceActions;
.super Ljava/lang/Object;
.source "DeviceActions.java"


# static fields
.field private static mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public static synthetic $r8$lambda$kYqQ4SJSFO5jGquGdPRnX7MyouE(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$playSoundFromURL$0(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 25
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    const/4 p0, 0x0

    .line 26
    sput-object p0, Lcom/system/DroidX/utils/DeviceActions;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic lambda$playSoundFromURL$1(Ljava/lang/String;)V
    .locals 2

    .line 15
    :try_start_0
    sget-object v0, Lcom/system/DroidX/utils/DeviceActions;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 17
    sget-object v0, Lcom/system/DroidX/utils/DeviceActions;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 20
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/system/DroidX/utils/DeviceActions;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 21
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 23
    sget-object p0, Lcom/system/DroidX/utils/DeviceActions;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/system/DroidX/utils/DeviceActions$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/system/DroidX/utils/DeviceActions$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 24
    sget-object p0, Lcom/system/DroidX/utils/DeviceActions;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/system/DroidX/utils/DeviceActions$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/system/DroidX/utils/DeviceActions$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 29
    sget-object p0, Lcom/system/DroidX/utils/DeviceActions;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sound error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceActions"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static playSoundFromURL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 13
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/system/DroidX/utils/DeviceActions$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/system/DroidX/utils/DeviceActions$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static stopSound()V
    .locals 3

    .line 38
    sget-object v0, Lcom/system/DroidX/utils/DeviceActions;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 41
    sget-object v0, Lcom/system/DroidX/utils/DeviceActions;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/system/DroidX/utils/DeviceActions;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stop sound error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceActions"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
