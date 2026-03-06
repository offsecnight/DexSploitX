.class final Lkotlinx/coroutines/scheduling/TaskImpl;
.super Lkotlinx/coroutines/scheduling/Task;
.source "Tasks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\n\u0010\u0002\u001a\u00060\u0004j\u0002`\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0010\u0007\u001a\u00060\tj\u0002`\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0016\u0010\u0002\u001a\u00060\u0004j\u0002`\u00038\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/TaskImpl;",
        "Lkotlinx/coroutines/scheduling/Task;",
        "block",
        "Lkotlinx/coroutines/Runnable;",
        "Ljava/lang/Runnable;",
        "submissionTime",
        "",
        "taskContext",
        "Lkotlinx/coroutines/scheduling/TaskContext;",
        "",
        "<init>",
        "(Ljava/lang/Runnable;JZ)V",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "toString",
        "",
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


# instance fields
.field public final block:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;JZ)V
    .locals 0

    .line 87
    invoke-direct {p0, p2, p3, p4}, Lkotlinx/coroutines/scheduling/Task;-><init>(JZ)V

    .line 84
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->block:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 89
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->block:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Task["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->block:Ljava/lang/Runnable;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->block:Ljava/lang/Runnable;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->submissionTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->taskContext:Z

    invoke-static {v1}, Lkotlinx/coroutines/scheduling/TasksKt;->access$taskContextString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
