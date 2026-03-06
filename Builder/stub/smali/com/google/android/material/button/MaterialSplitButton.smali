.class public Lcom/google/android/material/button/MaterialSplitButton;
.super Lcom/google/android/material/button/MaterialButtonGroup;
.source "MaterialSplitButton.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final REQUIRED_BUTTON_COUNT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_MaterialSplitButton:I

    sput v0, Lcom/google/android/material/button/MaterialSplitButton;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialSplitButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 83
    sget v0, Lcom/google/android/material/R$attr;->materialSplitButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialSplitButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 88
    sget v0, Lcom/google/android/material/button/MaterialSplitButton;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/button/MaterialButtonGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 99
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialSplitButton;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    .line 106
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/button/MaterialButtonGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialSplitButton;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 109
    invoke-virtual {v0, p2}, Lcom/google/android/material/button/MaterialButton;->setCheckable(Z)V

    .line 110
    const-class p1, Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setA11yClassName(Ljava/lang/String;)V

    .line 111
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialSplitButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 116
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 117
    sget p2, Lcom/google/android/material/R$string;->mtrl_button_expanded_content_description:I

    goto :goto_0

    .line 118
    :cond_0
    sget p2, Lcom/google/android/material/R$string;->mtrl_button_collapsed_content_description:I

    .line 115
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 120
    new-instance p1, Lcom/google/android/material/button/MaterialSplitButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/material/button/MaterialSplitButton$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/button/MaterialSplitButton;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->addOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V

    :cond_1
    return-void

    .line 103
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MaterialSplitButton can only hold two MaterialButtons."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MaterialSplitButton can only hold MaterialButtons."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic lambda$addView$0$com-google-android-material-button-MaterialSplitButton(Lcom/google/android/material/button/MaterialButton;Z)V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialSplitButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 126
    sget p2, Lcom/google/android/material/R$string;->mtrl_button_expanded_content_description:I

    goto :goto_0

    .line 127
    :cond_0
    sget p2, Lcom/google/android/material/R$string;->mtrl_button_collapsed_content_description:I

    .line 124
    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
