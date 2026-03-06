.class final Lkotlin/uuid/SecureRandomHolder;
.super Ljava/lang/Object;
.source "UuidJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/uuid/SecureRandomHolder;",
        "",
        "()V",
        "instance",
        "Ljava/security/SecureRandom;",
        "getInstance",
        "()Ljava/security/SecureRandom;",
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
.field public static final INSTANCE:Lkotlin/uuid/SecureRandomHolder;

.field private static final instance:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/uuid/SecureRandomHolder;

    invoke-direct {v0}, Lkotlin/uuid/SecureRandomHolder;-><init>()V

    sput-object v0, Lkotlin/uuid/SecureRandomHolder;->INSTANCE:Lkotlin/uuid/SecureRandomHolder;

    .line 15
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lkotlin/uuid/SecureRandomHolder;->instance:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Ljava/security/SecureRandom;
    .locals 1

    .line 15
    sget-object v0, Lkotlin/uuid/SecureRandomHolder;->instance:Ljava/security/SecureRandom;

    return-object v0
.end method
