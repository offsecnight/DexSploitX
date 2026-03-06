.class public abstract Lkotlinx/coroutines/AbstractTimeSource;
.super Ljava/lang/Object;
.source "AbstractTimeSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008 \u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0005H&J\u001d\u0010\u0007\u001a\u00060\tj\u0002`\u00082\n\u0010\n\u001a\u00060\tj\u0002`\u0008H&\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\rH&J\u0008\u0010\u000f\u001a\u00020\rH&J\u0008\u0010\u0010\u001a\u00020\rH&J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0005H&J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0016H&\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlinx/coroutines/AbstractTimeSource;",
        "",
        "<init>",
        "()V",
        "currentTimeMillis",
        "",
        "nanoTime",
        "wrapTask",
        "Lkotlinx/coroutines/Runnable;",
        "Ljava/lang/Runnable;",
        "block",
        "(Ljava/lang/Runnable;)Ljava/lang/Runnable;",
        "trackTask",
        "",
        "unTrackTask",
        "registerTimeLoopThread",
        "unregisterTimeLoopThread",
        "parkNanos",
        "blocker",
        "nanos",
        "unpark",
        "thread",
        "Ljava/lang/Thread;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract currentTimeMillis()J
.end method

.method public abstract nanoTime()J
.end method

.method public abstract parkNanos(Ljava/lang/Object;J)V
.end method

.method public abstract registerTimeLoopThread()V
.end method

.method public abstract trackTask()V
.end method

.method public abstract unTrackTask()V
.end method

.method public abstract unpark(Ljava/lang/Thread;)V
.end method

.method public abstract unregisterTimeLoopThread()V
.end method

.method public abstract wrapTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end method
