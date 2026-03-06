.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$6;
.super Landroid/view/View$AccessibilityDelegate;
.source "TimePickerTextInputPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->setTimeUnitAccessiblityLabel(Landroid/content/res/Resources;I)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

.field final synthetic val$contentDescriptionResId:I

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;Landroid/content/res/Resources;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$6;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$6;->val$res:Landroid/content/res/Resources;

    iput p3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$6;->val$contentDescriptionResId:I

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 171
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 172
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$6;->val$res:Landroid/content/res/Resources;

    iget v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$6;->val$contentDescriptionResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
