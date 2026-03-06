.class public final Landroidx/core/os/ProfilingRequest;
.super Ljava/lang/Object;
.source "Profiling.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B+\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/core/os/ProfilingRequest;",
        "",
        "profilingType",
        "",
        "params",
        "Landroid/os/Bundle;",
        "tag",
        "",
        "cancellationSignal",
        "Landroid/os/CancellationSignal;",
        "(ILandroid/os/Bundle;Ljava/lang/String;Landroid/os/CancellationSignal;)V",
        "getCancellationSignal",
        "()Landroid/os/CancellationSignal;",
        "getParams",
        "()Landroid/os/Bundle;",
        "getProfilingType",
        "()I",
        "getTag",
        "()Ljava/lang/String;",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cancellationSignal:Landroid/os/CancellationSignal;

.field private final params:Landroid/os/Bundle;

.field private final profilingType:I

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput p1, p0, Landroidx/core/os/ProfilingRequest;->profilingType:I

    .line 365
    iput-object p2, p0, Landroidx/core/os/ProfilingRequest;->params:Landroid/os/Bundle;

    .line 366
    iput-object p3, p0, Landroidx/core/os/ProfilingRequest;->tag:Ljava/lang/String;

    .line 367
    iput-object p4, p0, Landroidx/core/os/ProfilingRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final getCancellationSignal()Landroid/os/CancellationSignal;
    .locals 1

    .line 367
    iget-object v0, p0, Landroidx/core/os/ProfilingRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    return-object v0
.end method

.method public final getParams()Landroid/os/Bundle;
    .locals 1

    .line 365
    iget-object v0, p0, Landroidx/core/os/ProfilingRequest;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getProfilingType()I
    .locals 1

    .line 364
    iget v0, p0, Landroidx/core/os/ProfilingRequest;->profilingType:I

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Landroidx/core/os/ProfilingRequest;->tag:Ljava/lang/String;

    return-object v0
.end method
