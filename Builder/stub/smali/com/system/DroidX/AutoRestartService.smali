.class public Lcom/system/DroidX/AutoRestartService;
.super Landroid/app/Service;
.source "AutoRestartService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "auto_restart_channel"

.field private static final CHECK_INTERVAL:J = 0x7530L

.field private static final NOTIFICATION_ID:I = 0x65

.field private static final TAG:Ljava/lang/String; = "AutoRestartService"


# instance fields
.field private checkRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lcom/system/DroidX/AutoRestartService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/system/DroidX/AutoRestartService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckAndRestartConnection(Lcom/system/DroidX/AutoRestartService;)V
    .locals 0

    invoke-direct {p0}, Lcom/system/DroidX/AutoRestartService;->checkAndRestartConnection()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private checkAndRestartConnection()V
    .locals 3

    .line 86
    invoke-static {}, Lcom/system/DroidX/ConnectionService;->isRunning()Z

    move-result v0

    const-string v1, "AutoRestartService"

    if-nez v0, :cond_1

    .line 87
    const-string v0, "ConnectionService not running, restarting..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/system/DroidX/ConnectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 90
    invoke-virtual {p0, v0}, Lcom/system/DroidX/AutoRestartService;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, v0}, Lcom/system/DroidX/AutoRestartService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    :goto_0
    const-string v0, "Restarted ConnectionService"

    invoke-direct {p0, v0}, Lcom/system/DroidX/AutoRestartService;->updateNotification(Ljava/lang/String;)V

    return-void

    .line 96
    :cond_1
    const-string v0, "ConnectionService is running"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "Monitoring active"

    invoke-direct {p0, v0}, Lcom/system/DroidX/AutoRestartService;->updateNotification(Ljava/lang/String;)V

    return-void
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 2

    .line 136
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "auto_restart_channel"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "Service Monitor"

    .line 137
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "Monitoring active"

    .line 138
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x108007c

    .line 139
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 140
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 122
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Auto Restart Service"

    const/4 v2, 0x2

    const-string v3, "auto_restart_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 127
    const-string v1, "Monitors and restarts connection service"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 128
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/system/DroidX/AutoRestartService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private promoteToForeground()V
    .locals 4

    .line 76
    const-string v0, "AutoRestartService"

    :try_start_0
    invoke-direct {p0}, Lcom/system/DroidX/AutoRestartService;->createNotificationChannel()V

    .line 77
    invoke-direct {p0}, Lcom/system/DroidX/AutoRestartService;->createNotification()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {p0, v2, v1}, Lcom/system/DroidX/AutoRestartService;->startForeground(ILandroid/app/Notification;)V

    .line 78
    const-string v1, "Promoted to foreground service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 80
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

.method private updateNotification(Ljava/lang/String;)V
    .locals 3

    .line 146
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/system/DroidX/AutoRestartService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 148
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "auto_restart_channel"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "Service Monitor"

    .line 149
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v1, 0x108007c

    .line 151
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, -0x1

    .line 152
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 153
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 v1, 0x65

    .line 155
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    const-string v0, "AutoRestartService created"

    const-string v1, "AutoRestartService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/system/DroidX/AutoRestartService;->handler:Landroid/os/Handler;

    .line 38
    :try_start_0
    invoke-direct {p0}, Lcom/system/DroidX/AutoRestartService;->createNotificationChannel()V

    .line 39
    invoke-direct {p0}, Lcom/system/DroidX/AutoRestartService;->createNotification()Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {p0, v2, v0}, Lcom/system/DroidX/AutoRestartService;->startForeground(ILandroid/app/Notification;)V

    .line 40
    const-string v0, "Started as foreground service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not start as foreground (boot context): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    new-instance v0, Lcom/system/DroidX/AutoRestartService$1;

    invoke-direct {v0, p0}, Lcom/system/DroidX/AutoRestartService$1;-><init>(Lcom/system/DroidX/AutoRestartService;)V

    iput-object v0, p0, Lcom/system/DroidX/AutoRestartService;->checkRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 103
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 104
    const-string v0, "AutoRestartService"

    const-string v1, "AutoRestartService destroyed, scheduling restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/system/DroidX/AutoRestartService;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/system/DroidX/AutoRestartService;->checkRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/system/DroidX/AutoRestartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/system/DroidX/AutoRestartService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 114
    invoke-virtual {p0, v0}, Lcom/system/DroidX/AutoRestartService;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 116
    :cond_1
    invoke-virtual {p0, v0}, Lcom/system/DroidX/AutoRestartService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 58
    const-string p1, "AutoRestartService"

    const-string p2, "AutoRestartService started"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/system/DroidX/AutoRestartService;->promoteToForeground()V

    .line 64
    iget-object p1, p0, Lcom/system/DroidX/AutoRestartService;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/system/DroidX/AutoRestartService;->checkRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method
