.class public final Lkotlin/uuid/Uuid;
.super Ljava/lang/Object;
.source "Uuid.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/uuid/Uuid$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 !2\u00060\u0001j\u0002`\u0002:\u0001!B\u0017\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0016J\\\u0010\u0017\u001a\u0002H\u0018\"\u0004\u0008\u0000\u0010\u001826\u0010\u0019\u001a2\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0003\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u0002H\u00180\u001aH\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u0016H\u0016J\\\u0010\u001f\u001a\u0002H\u0018\"\u0004\u0008\u0000\u0010\u001826\u0010\u0019\u001a2\u0012\u0013\u0012\u00110 \u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0003\u0012\u0013\u0012\u00110 \u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u0002H\u00180\u001aH\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\u001dR\u001c\u0010\u0005\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u0003\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\n\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\""
    }
    d2 = {
        "Lkotlin/uuid/Uuid;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "mostSignificantBits",
        "",
        "leastSignificantBits",
        "(JJ)V",
        "getLeastSignificantBits$annotations",
        "()V",
        "getLeastSignificantBits",
        "()J",
        "getMostSignificantBits$annotations",
        "getMostSignificantBits",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toByteArray",
        "",
        "toHexString",
        "",
        "toLongs",
        "T",
        "action",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "toString",
        "toULongs",
        "Lkotlin/ULong;",
        "Companion",
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
.field public static final Companion:Lkotlin/uuid/Uuid$Companion;

.field private static final LEXICAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lkotlin/uuid/Uuid;",
            ">;"
        }
    .end annotation
.end field

.field private static final NIL:Lkotlin/uuid/Uuid;

.field public static final SIZE_BITS:I = 0x80

.field public static final SIZE_BYTES:I = 0x10


# instance fields
.field private final leastSignificantBits:J

.field private final mostSignificantBits:J


# direct methods
.method public static synthetic $r8$lambda$hY_iFluWdHz7H_4hiindXk95oZw(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)I
    .locals 0

    invoke-static {p0, p1}, Lkotlin/uuid/Uuid;->LEXICAL_ORDER$lambda$2(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/uuid/Uuid$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/uuid/Uuid$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/uuid/Uuid;->Companion:Lkotlin/uuid/Uuid$Companion;

    .line 210
    new-instance v0, Lkotlin/uuid/Uuid;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    sput-object v0, Lkotlin/uuid/Uuid;->NIL:Lkotlin/uuid/Uuid;

    .line 392
    new-instance v0, Lkotlin/uuid/Uuid$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lkotlin/uuid/Uuid$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lkotlin/uuid/Uuid;->LEXICAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    .line 42
    iput-wide p3, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    return-void
.end method

.method private static final LEXICAL_ORDER$lambda$2(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)I
    .locals 4

    .line 393
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    iget-wide v2, p1, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 394
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget-wide p0, p1, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(JJ)I

    move-result p0

    return p0

    .line 396
    :cond_0
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget-wide p0, p1, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(JJ)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLEXICAL_ORDER$cp()Ljava/util/Comparator;
    .locals 1

    .line 38
    sget-object v0, Lkotlin/uuid/Uuid;->LEXICAL_ORDER:Ljava/util/Comparator;

    return-object v0
.end method

.method public static final synthetic access$getNIL$cp()Lkotlin/uuid/Uuid;
    .locals 1

    .line 38
    sget-object v0, Lkotlin/uuid/Uuid;->NIL:Lkotlin/uuid/Uuid;

    return-object v0
.end method

.method public static synthetic getLeastSignificantBits$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMostSignificantBits$annotations()V
    .locals 0

    return-void
.end method

.method private final toLongs(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final toULongs(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/ULong;",
            "-",
            "Lkotlin/ULong;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 193
    :cond_0
    instance-of v1, p1, Lkotlin/uuid/Uuid;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 194
    :cond_1
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    check-cast p1, Lkotlin/uuid/Uuid;

    iget-wide v5, p1, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 195
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    iget-wide v5, p1, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getLeastSignificantBits()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    return-wide v0
.end method

.method public final getMostSignificantBits()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 199
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    iget-wide v2, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    xor-long/2addr v0, v2

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toByteArray()[B
    .locals 4

    const/16 v0, 0x10

    .line 176
    new-array v0, v0, [B

    .line 177
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lkotlin/uuid/UuidKt__UuidKt;->access$toByteArray(J[BI)V

    .line 178
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lkotlin/uuid/UuidKt__UuidKt;->access$toByteArray(J[BI)V

    return-object v0
.end method

.method public final toHexString()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x20

    .line 159
    new-array v0, v0, [B

    .line 160
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    const/16 v3, 0x10

    const/16 v4, 0x8

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    .line 161
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    .line 162
    invoke-static {v0}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x24

    .line 130
    new-array v0, v0, [B

    .line 131
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    const/16 v3, 0x18

    const/4 v4, 0x6

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    const/16 v1, 0x17

    const/16 v2, 0x2d

    .line 132
    aput-byte v2, v0, v1

    .line 133
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    const/16 v1, 0x30

    ushr-long/2addr v3, v1

    const/16 v1, 0x13

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v1, v5}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    const/16 v1, 0x12

    .line 134
    aput-byte v2, v0, v1

    .line 135
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/16 v1, 0xe

    invoke-static {v3, v4, v0, v1, v5}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    const/16 v1, 0xd

    .line 136
    aput-byte v2, v0, v1

    .line 137
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/16 v1, 0x10

    ushr-long/2addr v3, v1

    const/16 v1, 0x9

    invoke-static {v3, v4, v0, v1, v5}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    const/16 v1, 0x8

    .line 138
    aput-byte v2, v0, v1

    .line 139
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    .line 140
    invoke-static {v0}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
