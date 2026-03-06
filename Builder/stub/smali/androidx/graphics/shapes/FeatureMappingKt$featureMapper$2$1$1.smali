.class final Landroidx/graphics/shapes/FeatureMappingKt$featureMapper$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FeatureMapping.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/shapes/FeatureMappingKt;->featureMapper(Ljava/util/List;Ljava/util/List;)Landroidx/graphics/shapes/DoubleMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "i",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $N:I

.field final synthetic $dm:Landroidx/graphics/shapes/DoubleMapper;


# direct methods
.method constructor <init>(Landroidx/graphics/shapes/DoubleMapper;I)V
    .locals 0

    iput-object p1, p0, Landroidx/graphics/shapes/FeatureMappingKt$featureMapper$2$1$1;->$dm:Landroidx/graphics/shapes/DoubleMapper;

    iput p2, p0, Landroidx/graphics/shapes/FeatureMappingKt$featureMapper$2$1$1;->$N:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Ljava/lang/CharSequence;
    .locals 2

    .line 70
    iget-object v0, p0, Landroidx/graphics/shapes/FeatureMappingKt$featureMapper$2$1$1;->$dm:Landroidx/graphics/shapes/DoubleMapper;

    int-to-float p1, p1

    iget v1, p0, Landroidx/graphics/shapes/FeatureMappingKt$featureMapper$2$1$1;->$N:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/graphics/shapes/DoubleMapper;->map(F)F

    move-result p1

    invoke-static {p1}, Landroidx/graphics/shapes/Format_jvmKt;->toStringWithLessPrecision(F)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/FeatureMappingKt$featureMapper$2$1$1;->invoke(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
