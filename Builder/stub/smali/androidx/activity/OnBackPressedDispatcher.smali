.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001 B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0015\u0008\u0017\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\tJ\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u0018\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u0008\u0010\n\u001a\u00020\u0006H\u0007J\u0010\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0010\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0008\u0010\u001e\u001a\u00020\u0012H\u0007J\u0008\u0010\u001f\u001a\u00020\u0012H\u0007R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00060\u0010R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/activity/OnBackPressedDispatcher;",
        "",
        "fallbackOnBackPressed",
        "Ljava/lang/Runnable;",
        "onHasEnabledCallbacksChanged",
        "Landroidx/core/util/Consumer;",
        "",
        "<init>",
        "(Ljava/lang/Runnable;Landroidx/core/util/Consumer;)V",
        "(Ljava/lang/Runnable;)V",
        "hasEnabledCallbacks",
        "eventDispatcher",
        "Landroidx/navigationevent/NavigationEventDispatcher;",
        "getEventDispatcher$activity",
        "()Landroidx/navigationevent/NavigationEventDispatcher;",
        "eventInput",
        "Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;",
        "setOnBackInvokedDispatcher",
        "",
        "invoker",
        "Landroid/window/OnBackInvokedDispatcher;",
        "addCallback",
        "onBackPressedCallback",
        "Landroidx/activity/OnBackPressedCallback;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "dispatchOnBackStarted",
        "backEvent",
        "Landroidx/activity/BackEventCompat;",
        "dispatchOnBackProgressed",
        "onBackPressed",
        "dispatchOnBackCancelled",
        "OnBackPressedEventInput",
        "activity"
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
.field private final eventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

.field private final eventInput:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

.field private final fallbackOnBackPressed:Ljava/lang/Runnable;

.field private hasEnabledCallbacks:Z

.field private final onHasEnabledCallbacksChanged:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$P3kz-RLc-daaeV_hw-lzaGZuvuU(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    invoke-static {p0}, Landroidx/activity/OnBackPressedDispatcher;->eventDispatcher$lambda$0(Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->fallbackOnBackPressed:Ljava/lang/Runnable;

    .line 72
    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher;->onHasEnabledCallbacksChanged:Landroidx/core/util/Consumer;

    .line 84
    new-instance p1, Landroidx/navigationevent/NavigationEventDispatcher;

    new-instance p2, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    invoke-direct {p1, p2}, Landroidx/navigationevent/NavigationEventDispatcher;-><init>(Landroidx/navigationevent/OnBackCompletedFallback;)V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->eventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 90
    new-instance p2, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    invoke-direct {p2, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher;->eventInput:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 94
    check-cast p2, Landroidx/navigationevent/NavigationEventInput;

    invoke-virtual {p1, p2}, Landroidx/navigationevent/NavigationEventDispatcher;->addInput(Landroidx/navigationevent/NavigationEventInput;)V

    return-void
.end method

.method public static final synthetic access$getOnHasEnabledCallbacksChanged$p(Landroidx/activity/OnBackPressedDispatcher;)Landroidx/core/util/Consumer;
    .locals 0

    .line 70
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->onHasEnabledCallbacksChanged:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public static final synthetic access$setHasEnabledCallbacks$p(Landroidx/activity/OnBackPressedDispatcher;Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Landroidx/activity/OnBackPressedDispatcher;->hasEnabledCallbacks:Z

    return-void
.end method

.method private static final eventDispatcher$lambda$0(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->fallbackOnBackPressed:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addCallback(Landroidx/activity/OnBackPressedCallback;)V
    .locals 4

    const-string v0, "onBackPressedCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Landroidx/activity/OnBackPressedCallbackInfo;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Landroidx/activity/OnBackPressedCallbackInfo;-><init>(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 132
    check-cast v0, Landroidx/navigationevent/NavigationEventInfo;

    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedCallback;->createNavigationEventHandler$activity(Landroidx/navigationevent/NavigationEventInfo;)Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    move-result-object p1

    .line 133
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->eventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    check-cast p1, Landroidx/navigationevent/NavigationEventHandler;

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v1}, Landroidx/navigationevent/NavigationEventDispatcher;->addHandler$default(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;IILjava/lang/Object;)V

    return-void
.end method

.method public final addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V
    .locals 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_0

    return-void

    .line 167
    :cond_0
    new-instance v1, Landroidx/activity/OnBackPressedCallbackInfo;

    invoke-direct {v1, p2, p1}, Landroidx/activity/OnBackPressedCallbackInfo;-><init>(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;)V

    .line 168
    check-cast v1, Landroidx/navigationevent/NavigationEventInfo;

    invoke-virtual {p2, v1}, Landroidx/activity/OnBackPressedCallback;->createNavigationEventHandler$activity(Landroidx/navigationevent/NavigationEventInfo;)Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    move-result-object p1

    .line 170
    sget-boolean v1, Landroidx/activity/ActivityFlags;->isOnBackPressedLifecycleOrderMaintained:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p1, v1}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->setLifecycleActive(Z)V

    .line 175
    iget-object v2, p0, Landroidx/activity/OnBackPressedDispatcher;->eventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    move-object v3, p1

    check-cast v3, Landroidx/navigationevent/NavigationEventHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Landroidx/navigationevent/NavigationEventDispatcher;->addHandler$default(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;IILjava/lang/Object;)V

    .line 180
    :cond_1
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;

    invoke-direct {v1, p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;-><init>(Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;)V

    .line 215
    move-object p1, v1

    check-cast p1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 217
    check-cast v1, Ljava/lang/AutoCloseable;

    invoke-virtual {p2, v1}, Landroidx/activity/OnBackPressedCallback;->addCloseable$activity(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public final dispatchOnBackCancelled()V
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->eventInput:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->backCancelled()V

    return-void
.end method

.method public final dispatchOnBackProgressed(Landroidx/activity/BackEventCompat;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->eventInput:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->toNavigationEvent()Landroidx/navigationevent/NavigationEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->backProgressed(Landroidx/navigationevent/NavigationEvent;)V

    return-void
.end method

.method public final dispatchOnBackStarted(Landroidx/activity/BackEventCompat;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->eventInput:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->toNavigationEvent()Landroidx/navigationevent/NavigationEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->backStarted(Landroidx/navigationevent/NavigationEvent;)V

    return-void
.end method

.method public final getEventDispatcher$activity()Landroidx/navigationevent/NavigationEventDispatcher;
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->eventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    return-object v0
.end method

.method public final hasEnabledCallbacks()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->hasEnabledCallbacks:Z

    return v0
.end method

.method public final onBackPressed()V
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->eventInput:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->backCompleted()V

    return-void
.end method

.method public final setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 3

    const-string v0, "invoker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->eventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 108
    new-instance v1, Landroidx/navigationevent/OnBackInvokedDefaultInput;

    invoke-direct {v1, p1}, Landroidx/navigationevent/OnBackInvokedDefaultInput;-><init>(Landroid/window/OnBackInvokedDispatcher;)V

    check-cast v1, Landroidx/navigationevent/NavigationEventInput;

    const/4 v2, 0x1

    .line 107
    invoke-virtual {v0, v1, v2}, Landroidx/navigationevent/NavigationEventDispatcher;->addInput(Landroidx/navigationevent/NavigationEventInput;I)V

    .line 111
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->eventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 112
    new-instance v1, Landroidx/navigationevent/OnBackInvokedOverlayInput;

    invoke-direct {v1, p1}, Landroidx/navigationevent/OnBackInvokedOverlayInput;-><init>(Landroid/window/OnBackInvokedDispatcher;)V

    check-cast v1, Landroidx/navigationevent/NavigationEventInput;

    const/4 p1, 0x0

    .line 111
    invoke-virtual {v0, v1, p1}, Landroidx/navigationevent/NavigationEventDispatcher;->addInput(Landroidx/navigationevent/NavigationEventInput;I)V

    return-void
.end method
