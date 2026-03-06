.class Lcom/system/DroidX/ConnectionService$2;
.super Ljava/lang/Object;
.source "ConnectionService.java"

# interfaces
.implements Lcom/system/DroidX/utils/CameraStreamer$StreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/system/DroidX/ConnectionService;->handleCameraStream(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/system/DroidX/ConnectionService;


# direct methods
.method constructor <init>(Lcom/system/DroidX/ConnectionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 479
    iput-object p1, p0, Lcom/system/DroidX/ConnectionService$2;->this$0:Lcom/system/DroidX/ConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFrameReady(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
