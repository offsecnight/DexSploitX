.class final Lkotlin/io/path/PathTreeWalk$dfsIterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "PathTreeWalk.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathTreeWalk;->dfsIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/nio/file/Path;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$dfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,181:1\n45#2,19:182\n45#2,19:201\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$dfsIterator$1\n*L\n71#1:182,19\n82#1:201,19\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Ljava/nio/file/Path;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.io.path.PathTreeWalk$dfsIterator$1"
    f = "PathTreeWalk.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3
    }
    l = {
        0xc0,
        0xc6,
        0xd3,
        0xd9
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "stack",
        "entriesReader",
        "startNode",
        "this_$iv",
        "path$iv",
        "$this$iterator",
        "stack",
        "entriesReader",
        "$this$iterator",
        "stack",
        "entriesReader",
        "pathNode",
        "this_$iv",
        "path$iv",
        "$this$iterator",
        "stack",
        "entriesReader"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lkotlin/io/path/PathTreeWalk;


# direct methods
.method constructor <init>(Lkotlin/io/path/PathTreeWalk;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/io/path/PathTreeWalk;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/io/path/PathTreeWalk$dfsIterator$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;

    iget-object v1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-direct {v0, v1, p2}, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;-><init>(Lkotlin/io/path/PathTreeWalk;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Ljava/nio/file/Path;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65
    iget v1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    check-cast v1, Ljava/nio/file/Path;

    iget-object v5, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlin/io/path/PathTreeWalk;

    iget-object v8, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlin/io/path/PathNode;

    iget-object v9, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/io/path/DirectoryEntriesReader;

    iget-object v10, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/collections/ArrayDeque;

    iget-object v11, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    :goto_0
    iget-object v1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/io/path/DirectoryEntriesReader;

    iget-object v5, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/collections/ArrayDeque;

    iget-object v8, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    check-cast v1, Ljava/nio/file/Path;

    iget-object v5, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlin/io/path/PathTreeWalk;

    iget-object v8, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlin/io/path/PathNode;

    iget-object v9, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/io/path/DirectoryEntriesReader;

    iget-object v10, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/collections/ArrayDeque;

    iget-object v11, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Lkotlin/sequences/SequenceScope;

    .line 67
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 68
    new-instance v1, Lkotlin/io/path/DirectoryEntriesReader;

    iget-object v9, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-static {v9}, Lkotlin/io/path/PathTreeWalk;->access$getFollowLinks(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v9

    invoke-direct {v1, v9}, Lkotlin/io/path/DirectoryEntriesReader;-><init>(Z)V

    .line 70
    new-instance v9, Lkotlin/io/path/PathNode;

    iget-object v10, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-static {v10}, Lkotlin/io/path/PathTreeWalk;->access$getStart$p(Lkotlin/io/path/PathTreeWalk;)Ljava/nio/file/Path;

    move-result-object v10

    iget-object v11, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-static {v11}, Lkotlin/io/path/PathTreeWalk;->access$getStart$p(Lkotlin/io/path/PathTreeWalk;)Ljava/nio/file/Path;

    move-result-object v11

    iget-object v12, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-static {v12}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/io/path/PathTreeWalkKt;->access$keyOf(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v9, v10, v11, v6}, Lkotlin/io/path/PathNode;-><init>(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/PathNode;)V

    .line 71
    iget-object v10, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    .line 182
    invoke-virtual {v9}, Lkotlin/io/path/PathNode;->getPath()Ljava/nio/file/Path;

    move-result-object v11

    .line 183
    invoke-virtual {v9}, Lkotlin/io/path/PathNode;->getParent()Lkotlin/io/path/PathNode;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 185
    invoke-static {v11}, Lkotlin/io/path/PathsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 187
    :cond_5
    invoke-static {v10}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    invoke-static {v11, v12}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 188
    invoke-static {v9}, Lkotlin/io/path/PathTreeWalkKt;->access$createsCycle(Lkotlin/io/path/PathNode;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 191
    invoke-static {v10}, Lkotlin/io/path/PathTreeWalk;->access$getIncludeDirectories(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 192
    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v8, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    iput-object v9, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    iput-object v10, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    iput-object v11, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    iput v7, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->label:I

    invoke-virtual {v8, v11, v5}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6

    goto/16 :goto_5

    :cond_6
    move-object v5, v9

    move-object v9, v1

    move-object v1, v11

    move-object v11, v8

    move-object v8, v5

    move-object v5, v10

    move-object v10, p1

    :goto_1
    move-object p1, v11

    move-object v11, v1

    move-object v1, v9

    move-object v9, v8

    move-object v8, p1

    move-object p1, v10

    move-object v10, v5

    .line 194
    :cond_7
    invoke-static {v10}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v5

    array-length v10, v5

    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/nio/file/LinkOption;

    array-length v10, v5

    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/nio/file/LinkOption;

    invoke-static {v11, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 195
    invoke-virtual {v1, v9}, Lkotlin/io/path/DirectoryEntriesReader;->readEntries(Lkotlin/io/path/PathNode;)Ljava/util/List;

    move-result-object v5

    .line 72
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v9, v5}, Lkotlin/io/path/PathNode;->setContentIterator(Ljava/util/Iterator;)V

    .line 73
    invoke-virtual {p1, v9}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 189
    :cond_8
    new-instance p1, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_9
    new-array v9, v7, [Ljava/nio/file/LinkOption;

    sget-object v10, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v10, v9, v2

    invoke-static {v9, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/nio/file/LinkOption;

    invoke-static {v11, v9}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 198
    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v8, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    iput v5, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->label:I

    invoke-virtual {v8, v11, v9}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_a

    goto/16 :goto_5

    :cond_a
    :goto_2
    move-object v5, p1

    .line 76
    :cond_b
    :goto_3
    move-object p1, v5

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    .line 77
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/io/path/PathNode;

    .line 78
    invoke-virtual {p1}, Lkotlin/io/path/PathNode;->getContentIterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/io/path/PathNode;

    .line 82
    iget-object v9, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    .line 201
    invoke-virtual {p1}, Lkotlin/io/path/PathNode;->getPath()Ljava/nio/file/Path;

    move-result-object v10

    .line 202
    invoke-virtual {p1}, Lkotlin/io/path/PathNode;->getParent()Lkotlin/io/path/PathNode;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 204
    invoke-static {v10}, Lkotlin/io/path/PathsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 206
    :cond_c
    invoke-static {v9}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/nio/file/LinkOption;

    array-length v12, v11

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/nio/file/LinkOption;

    invoke-static {v10, v11}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 207
    invoke-static {p1}, Lkotlin/io/path/PathTreeWalkKt;->access$createsCycle(Lkotlin/io/path/PathNode;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 210
    invoke-static {v9}, Lkotlin/io/path/PathTreeWalk;->access$getIncludeDirectories(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 211
    move-object v11, p0

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v8, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    iput-object v9, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    iput-object v10, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    iput v4, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->label:I

    invoke-virtual {v8, v10, v11}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_d

    goto/16 :goto_5

    :cond_d
    move-object v11, v9

    move-object v9, v1

    move-object v1, v10

    move-object v10, v5

    move-object v5, v11

    move-object v11, v8

    move-object v8, p1

    :goto_4
    move-object p1, v10

    move-object v10, v1

    move-object v1, v9

    move-object v9, v5

    move-object v5, p1

    move-object p1, v8

    move-object v8, v11

    .line 213
    :cond_e
    invoke-static {v9}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v9

    array-length v11, v9

    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/nio/file/LinkOption;

    array-length v11, v9

    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/nio/file/LinkOption;

    invoke-static {v10, v9}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 214
    invoke-virtual {v1, p1}, Lkotlin/io/path/DirectoryEntriesReader;->readEntries(Lkotlin/io/path/PathNode;)Ljava/util/List;

    move-result-object v9

    .line 83
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-virtual {p1, v9}, Lkotlin/io/path/PathNode;->setContentIterator(Ljava/util/Iterator;)V

    .line 84
    invoke-virtual {v5, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 208
    :cond_f
    new-instance p1, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :cond_10
    new-array p1, v7, [Ljava/nio/file/LinkOption;

    sget-object v9, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v9, p1, v2

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/LinkOption;

    invoke-static {v10, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 217
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v8, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    iput-object v6, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    iput-object v6, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    iput-object v6, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    iput v3, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->label:I

    invoke-virtual {v8, v10, p1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    :goto_5
    return-object v0

    .line 88
    :cond_11
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto/16 :goto_3

    .line 91
    :cond_12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
