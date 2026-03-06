.class Lcom/google/android/material/shape/MaterialShapeDrawable$2;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCornerPathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->access$100(Lcom/google/android/material/shape/MaterialShapeDrawable;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 284
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->access$200(Lcom/google/android/material/shape/MaterialShapeDrawable;)[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapePath;->createShadowCompatOperation(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public onEdgePathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->access$100(Lcom/google/android/material/shape/MaterialShapeDrawable;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    .line 290
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp()Z

    move-result v2

    .line 289
    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 291
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->access$300(Lcom/google/android/material/shape/MaterialShapeDrawable;)[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapePath;->createShadowCompatOperation(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method
