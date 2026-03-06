.class public final synthetic Lcom/system/DroidX/utils/CameraStreamer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/system/DroidX/utils/CameraStreamer;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/system/DroidX/utils/CameraStreamer;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/system/DroidX/utils/CameraStreamer$$ExternalSyntheticLambda1;->f$0:Lcom/system/DroidX/utils/CameraStreamer;

    iput-object p2, p0, Lcom/system/DroidX/utils/CameraStreamer$$ExternalSyntheticLambda1;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/system/DroidX/utils/CameraStreamer$$ExternalSyntheticLambda1;->f$0:Lcom/system/DroidX/utils/CameraStreamer;

    iget-object v1, p0, Lcom/system/DroidX/utils/CameraStreamer$$ExternalSyntheticLambda1;->f$1:[B

    invoke-virtual {v0, v1}, Lcom/system/DroidX/utils/CameraStreamer;->lambda$sendFrameToServer$1$com-system-DroidX-utils-CameraStreamer([B)V

    return-void
.end method
