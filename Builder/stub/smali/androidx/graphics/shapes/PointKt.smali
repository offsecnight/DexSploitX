.class public final Landroidx/graphics/shapes/PointKt;
.super Ljava/lang/Object;
.source "Point.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Point.kt\nandroidx/graphics/shapes/PointKt\n+ 2 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 3 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n48#2:140\n54#2:142\n48#2:144\n54#2:146\n48#2:148\n54#2:150\n22#3:141\n22#3:143\n22#3:145\n22#3:149\n1#4:147\n*S KotlinDebug\n*F\n+ 1 Point.kt\nandroidx/graphics/shapes/PointKt\n*L\n27#1:140\n30#1:142\n32#1:144\n32#1:146\n137#1:148\n137#1:150\n27#1:141\n30#1:143\n32#1:145\n137#1:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a6\u0010\u0008\u001a\u00060\u0002j\u0002`\u00032\n\u0010\t\u001a\u00060\u0002j\u0002`\u00032\n\u0010\n\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u000b\u001a\u00020\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a&\u0010\u000e\u001a\u00020\u000f*\u00060\u0002j\u0002`\u00032\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u0003H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u001a2\u0010\u0013\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0008\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u001a\'\u0010\u0016\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a&\u0010\u001a\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u0003H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u001a*\u0010\u001a\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\u0006\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a\u001e\u0010!\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u0003H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#\u001a\u001a\u0010$\u001a\u00020\u0001*\u00060\u0002j\u0002`\u0003H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010\u0005\u001a\u001a\u0010&\u001a\u00020\u0001*\u00060\u0002j\u0002`\u0003H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010\u0005\u001a+\u0010(\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u0003H\u0080\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*\u001a+\u0010+\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u0003H\u0080\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010*\u001a\'\u0010-\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010\u0019\u001a\'\u0010/\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u0010\u0019\u001a&\u00101\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0006\u00102\u001a\u000203H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105\u001a\u001f\u00106\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u0003H\u0080\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u0010#\"\u001c\u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00038@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\"\u001c\u0010\u0006\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00038@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005*\u000c\u0008\u0000\u00108\"\u00020\u00022\u00020\u0002\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00069"
    }
    d2 = {
        "x",
        "",
        "Landroidx/collection/FloatFloatPair;",
        "Landroidx/graphics/shapes/Point;",
        "getX-DnnuFBc",
        "(J)F",
        "y",
        "getY-DnnuFBc",
        "interpolate",
        "start",
        "stop",
        "fraction",
        "interpolate-dLqxh1s",
        "(JJF)J",
        "clockwise",
        "",
        "other",
        "clockwise-ybeJwSQ",
        "(JJ)Z",
        "copy",
        "copy-5P9i7ZU",
        "(JFF)J",
        "div",
        "operand",
        "div-so9K2fw",
        "(JF)J",
        "dotProduct",
        "dotProduct-ybeJwSQ",
        "(JJ)F",
        "otherX",
        "otherY",
        "dotProduct-5P9i7ZU",
        "(JFF)F",
        "getDirection",
        "getDirection-DnnuFBc",
        "(J)J",
        "getDistance",
        "getDistance-DnnuFBc",
        "getDistanceSquared",
        "getDistanceSquared-DnnuFBc",
        "minus",
        "minus-ybeJwSQ",
        "(JJ)J",
        "plus",
        "plus-ybeJwSQ",
        "rem",
        "rem-so9K2fw",
        "times",
        "times-so9K2fw",
        "transformed",
        "f",
        "Landroidx/graphics/shapes/PointTransformer;",
        "transformed-so9K2fw",
        "(JLandroidx/graphics/shapes/PointTransformer;)J",
        "unaryMinus",
        "unaryMinus-DnnuFBc",
        "Point",
        "graphics-shapes_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final clockwise-ybeJwSQ(JJ)Z
    .locals 2

    .line 58
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result p1

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final copy-5P9i7ZU(JFF)J
    .locals 0

    .line 32
    invoke-static {p2, p3}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic copy-5P9i7ZU$default(JFFILjava/lang/Object;)J
    .locals 2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p2, 0x20

    shr-long v0, p0, p2

    long-to-int p2, v0

    .line 145
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide p3, 0xffffffffL

    and-long/2addr p3, p0

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    .line 32
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/graphics/shapes/PointKt;->copy-5P9i7ZU(JFF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final div-so9K2fw(JF)J
    .locals 1

    .line 108
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    div-float/2addr v0, p2

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    div-float/2addr p0, p2

    invoke-static {v0, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final dotProduct-5P9i7ZU(JFF)F
    .locals 1

    .line 51
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    mul-float/2addr p0, p3

    add-float/2addr v0, p0

    return v0
.end method

.method public static final dotProduct-ybeJwSQ(JJ)F
    .locals 2

    .line 49
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final getDirection-DnnuFBc(J)J
    .locals 2

    .line 62
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getDistance-DnnuFBc(J)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 64
    invoke-static {p0, p1, v0}, Landroidx/graphics/shapes/PointKt;->div-so9K2fw(JF)J

    move-result-wide p0

    return-wide p0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the direction of a 0-length vector"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getDistance-DnnuFBc(J)F
    .locals 2

    .line 40
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final getDistanceSquared-DnnuFBc(J)F
    .locals 2

    .line 47
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public static final getX-DnnuFBc(J)F
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    .line 141
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final getY-DnnuFBc(J)F
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    .line 143
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final interpolate-dLqxh1s(JJF)J
    .locals 2

    .line 132
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v1

    invoke-static {v0, v1, p4}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v0

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p1

    invoke-static {p0, p1, p4}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result p0

    invoke-static {v0, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final minus-ybeJwSQ(JJ)J
    .locals 2

    .line 84
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {v0, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final plus-ybeJwSQ(JJ)J
    .locals 2

    .line 92
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {v0, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final rem-so9K2fw(JF)J
    .locals 1

    .line 116
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    rem-float/2addr v0, p2

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    rem-float/2addr p0, p2

    invoke-static {v0, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final times-so9K2fw(JF)J
    .locals 1

    .line 100
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {v0, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final transformed-so9K2fw(JLandroidx/graphics/shapes/PointTransformer;)J
    .locals 2

    const-string v0, "f"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    invoke-interface {p2, v0, p0}, Landroidx/graphics/shapes/PointTransformer;->transform-XgqJiTY(FF)J

    move-result-wide p0

    const/16 p2, 0x20

    shr-long v0, p0, p2

    long-to-int p2, v0

    .line 149
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 137
    invoke-static {p2, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final unaryMinus-DnnuFBc(J)J
    .locals 1

    .line 75
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    neg-float v0, v0

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    neg-float p0, p0

    invoke-static {v0, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method
