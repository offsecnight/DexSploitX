.class final Lkotlin/sequences/FlatteningSequence$State;
.super Ljava/lang/Object;
.source "Sequences.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/sequences/FlatteningSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/sequences/FlatteningSequence$State;",
        "",
        "()V",
        "DONE",
        "",
        "READY",
        "UNDEFINED",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final DONE:I = 0x2

.field public static final INSTANCE:Lkotlin/sequences/FlatteningSequence$State;

.field public static final READY:I = 0x1

.field public static final UNDEFINED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/sequences/FlatteningSequence$State;

    invoke-direct {v0}, Lkotlin/sequences/FlatteningSequence$State;-><init>()V

    sput-object v0, Lkotlin/sequences/FlatteningSequence$State;->INSTANCE:Lkotlin/sequences/FlatteningSequence$State;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
