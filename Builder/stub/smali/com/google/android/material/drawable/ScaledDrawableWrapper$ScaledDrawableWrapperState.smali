.class final Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ScaledDrawableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/drawable/ScaledDrawableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScaledDrawableWrapperState"
.end annotation


# instance fields
.field private final height:I

.field private final width:I

.field private wrappedDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;II)V
    .locals 0

    .line 95
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->wrappedDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 97
    iput p2, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->width:I

    .line 98
    iput p3, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->height:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->width:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->height:I

    return p0
.end method

.method static synthetic access$202(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->wrappedDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object p1
.end method


# virtual methods
.method canConstantState()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->wrappedDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->wrappedDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->wrappedDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/google/android/material/drawable/ScaledDrawableWrapper;

    iget v2, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->width:I

    iget v3, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->height:I

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v1
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->wrappedDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 112
    new-instance v0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;

    iget v1, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->width:I

    iget v2, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->height:I

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->wrappedDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 119
    new-instance p2, Lcom/google/android/material/drawable/ScaledDrawableWrapper;

    iget v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->width:I

    iget v1, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->height:I

    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object p2
.end method
