.class Lcom/system/DroidX/AutoRestartService$1;
.super Ljava/lang/Object;
.source "AutoRestartService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/system/DroidX/AutoRestartService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/system/DroidX/AutoRestartService;


# direct methods
.method constructor <init>(Lcom/system/DroidX/AutoRestartService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/system/DroidX/AutoRestartService$1;->this$0:Lcom/system/DroidX/AutoRestartService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/system/DroidX/AutoRestartService$1;->this$0:Lcom/system/DroidX/AutoRestartService;

    invoke-static {v0}, Lcom/system/DroidX/AutoRestartService;->-$$Nest$mcheckAndRestartConnection(Lcom/system/DroidX/AutoRestartService;)V

    .line 51
    iget-object v0, p0, Lcom/system/DroidX/AutoRestartService$1;->this$0:Lcom/system/DroidX/AutoRestartService;

    invoke-static {v0}, Lcom/system/DroidX/AutoRestartService;->-$$Nest$fgethandler(Lcom/system/DroidX/AutoRestartService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
