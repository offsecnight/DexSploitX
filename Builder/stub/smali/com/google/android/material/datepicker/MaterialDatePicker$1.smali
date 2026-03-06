.class Lcom/google/android/material/datepicker/MaterialDatePicker$1;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;->enableEdgeToEdgeIfNeeded(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

.field final synthetic val$headerLayout:Landroid/view/View;

.field final synthetic val$originalHeaderHeight:I

.field final synthetic val$originalPaddingLeft:I

.field final synthetic val$originalPaddingRight:I

.field final synthetic val$originalPaddingTop:I


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;ILandroid/view/View;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 468
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    iput p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$originalHeaderHeight:I

    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$headerLayout:Landroid/view/View;

    iput p4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$originalPaddingLeft:I

    iput p5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$originalPaddingTop:I

    iput p6, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$originalPaddingRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 471
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 472
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$originalHeaderHeight:I

    if-ltz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$headerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$originalHeaderHeight:I

    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 474
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$headerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$headerLayout:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$originalPaddingLeft:I

    iget v2, p1, Landroidx/core/graphics/Insets;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$originalPaddingTop:I

    iget v3, p1, Landroidx/core/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$originalPaddingRight:I

    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    add-int/2addr v3, p1

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->val$headerLayout:Landroid/view/View;

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    .line 476
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
