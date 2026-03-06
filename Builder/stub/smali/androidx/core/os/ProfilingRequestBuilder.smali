.class public abstract Landroidx/core/os/ProfilingRequestBuilder;
.super Ljava/lang/Object;
.source "Profiling.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/core/os/ProfilingRequestBuilder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\'\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u00020\u0002B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\tJ\u0008\u0010\n\u001a\u00020\u000bH%J\u0008\u0010\u000c\u001a\u00020\rH%J\r\u0010\u000e\u001a\u00028\u0000H%\u00a2\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0015R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/core/os/ProfilingRequestBuilder;",
        "T",
        "",
        "()V",
        "mCancellationSignal",
        "Landroid/os/CancellationSignal;",
        "mTag",
        "",
        "build",
        "Landroidx/core/os/ProfilingRequest;",
        "getParams",
        "Landroid/os/Bundle;",
        "getProfilingType",
        "",
        "getThis",
        "()Landroidx/core/os/ProfilingRequestBuilder;",
        "setCancellationSignal",
        "cancellationSignal",
        "(Landroid/os/CancellationSignal;)Landroidx/core/os/ProfilingRequestBuilder;",
        "setTag",
        "tag",
        "(Ljava/lang/String;)Landroidx/core/os/ProfilingRequestBuilder;",
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
.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Landroidx/core/os/ProfilingRequest;
    .locals 5

    .line 172
    new-instance v0, Landroidx/core/os/ProfilingRequest;

    invoke-virtual {p0}, Landroidx/core/os/ProfilingRequestBuilder;->getProfilingType()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/os/ProfilingRequestBuilder;->getParams()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Landroidx/core/os/ProfilingRequestBuilder;->mTag:Ljava/lang/String;

    iget-object v4, p0, Landroidx/core/os/ProfilingRequestBuilder;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/os/ProfilingRequest;-><init>(ILandroid/os/Bundle;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    return-object v0
.end method

.method protected abstract getParams()Landroid/os/Bundle;
.end method

.method protected abstract getProfilingType()I
.end method

.method protected abstract getThis()Landroidx/core/os/ProfilingRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final setCancellationSignal(Landroid/os/CancellationSignal;)Landroidx/core/os/ProfilingRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            ")TT;"
        }
    .end annotation

    const-string v0, "cancellationSignal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Landroidx/core/os/ProfilingRequestBuilder;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 164
    invoke-virtual {p0}, Landroidx/core/os/ProfilingRequestBuilder;->getThis()Landroidx/core/os/ProfilingRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setTag(Ljava/lang/String;)Landroidx/core/os/ProfilingRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Landroidx/core/os/ProfilingRequestBuilder;->mTag:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Landroidx/core/os/ProfilingRequestBuilder;->getThis()Landroidx/core/os/ProfilingRequestBuilder;

    move-result-object p1

    return-object p1
.end method
