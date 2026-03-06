.class public final Lkotlinx/coroutines/android/HandlerDispatcherKt$awaitFrameSlowPath$lambda$3$$inlined$Runnable$1;
.super Ljava/lang/Object;
.source "Runnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/android/HandlerDispatcherKt;->awaitFrameSlowPath(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerDispatcherKt\n*L\n1#1,13:1\n197#2,2:14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cont$inlined:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerDispatcherKt$awaitFrameSlowPath$lambda$3$$inlined$Runnable$1;->$cont$inlined:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 14
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerDispatcherKt$awaitFrameSlowPath$lambda$3$$inlined$Runnable$1;->$cont$inlined:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v0}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->access$updateChoreographerAndPostFrameCallback(Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method
