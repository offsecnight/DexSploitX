.class final synthetic Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;
.super Ljava/lang/Object;
.source "DebugProbesImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/debug/internal/DebugProbesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1002
    name = "DebugProbesImpl$VolatileWrapper$atomicfu$private"
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


# static fields
.field private static final synthetic installations$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic sequenceNumber$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile synthetic installations$volatile:I

.field private volatile synthetic sequenceNumber$volatile:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "installations$volatile"

    const-class v1, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;->installations$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "sequenceNumber$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;->sequenceNumber$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstallations$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;->getInstallations$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSequenceNumber$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;->getSequenceNumber$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic getInstallations$volatile()I
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;->installations$volatile:I

    return v0
.end method

.method private static final synthetic getInstallations$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;->installations$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final synthetic getSequenceNumber$volatile()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;->sequenceNumber$volatile:J

    return-wide v0
.end method

.method private static final synthetic getSequenceNumber$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;->sequenceNumber$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final synthetic setInstallations$volatile(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;->installations$volatile:I

    return-void
.end method

.method private final synthetic setSequenceNumber$volatile(J)V
    .locals 0

    iput-wide p1, p0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$DebugProbesImpl$VolatileWrapper$atomicfu$private;->sequenceNumber$volatile:J

    return-void
.end method
