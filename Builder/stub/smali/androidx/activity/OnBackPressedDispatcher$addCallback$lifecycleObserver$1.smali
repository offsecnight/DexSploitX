.class public final Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0005H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "androidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "onStateChanged",
        "",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "close",
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
.field final synthetic $eventHandler:Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

.field final synthetic $lifecycle:Landroidx/lifecycle/Lifecycle;

.field final synthetic this$0:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method constructor <init>(Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;->$eventHandler:Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;->this$0:Landroidx/activity/OnBackPressedDispatcher;

    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;->$lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 210
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;->$lifecycle:Landroidx/lifecycle/Lifecycle;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget-boolean p1, Landroidx/activity/ActivityFlags;->isOnBackPressedLifecycleOrderMaintained:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 184
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 185
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;->$eventHandler:Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->setLifecycleActive(Z)V

    goto :goto_0

    .line 186
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_3

    .line 187
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;->$eventHandler:Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->setLifecycleActive(Z)V

    goto :goto_0

    .line 190
    :cond_1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_2

    .line 193
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;->this$0:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p1}, Landroidx/activity/OnBackPressedDispatcher;->getEventDispatcher$activity()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object p1

    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;->$eventHandler:Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    check-cast v1, Landroidx/navigationevent/NavigationEventHandler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Landroidx/navigationevent/NavigationEventDispatcher;->addHandler$default(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;IILjava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_2
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_3

    .line 196
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;->$eventHandler:Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    invoke-virtual {p1}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->remove()V

    .line 200
    :cond_3
    :goto_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_4

    .line 202
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;->$eventHandler:Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    invoke-virtual {p1}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->remove()V

    .line 204
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$addCallback$lifecycleObserver$1;->$lifecycle:Landroidx/lifecycle/Lifecycle;

    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_4
    return-void
.end method
