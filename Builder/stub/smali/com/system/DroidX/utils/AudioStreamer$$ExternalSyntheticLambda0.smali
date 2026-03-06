.class public final synthetic Lcom/system/DroidX/utils/AudioStreamer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/system/DroidX/utils/AudioStreamer;


# direct methods
.method public synthetic constructor <init>(Lcom/system/DroidX/utils/AudioStreamer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/system/DroidX/utils/AudioStreamer$$ExternalSyntheticLambda0;->f$0:Lcom/system/DroidX/utils/AudioStreamer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/system/DroidX/utils/AudioStreamer$$ExternalSyntheticLambda0;->f$0:Lcom/system/DroidX/utils/AudioStreamer;

    invoke-virtual {v0}, Lcom/system/DroidX/utils/AudioStreamer;->lambda$startStreaming$0$com-system-DroidX-utils-AudioStreamer()V

    return-void
.end method
