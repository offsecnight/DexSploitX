.class public Lcom/google/android/material/drawable/ScaledDrawableWrapper;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;
.source "ScaledDrawableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;
    }
.end annotation


# instance fields
.field private mutated:Z

.field private state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 38
    new-instance v0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-direct {p0, p1}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->getConstantStateFrom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;II)V

    iput-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    return-void
.end method

.method private getConstantStateFrom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-virtual {v0}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-static {v0}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->access$100(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-static {v0}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->access$000(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;)I

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 75
    iget-boolean v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->mutated:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 81
    :cond_0
    new-instance v1, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 82
    invoke-direct {p0, v0}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->getConstantStateFrom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-static {v2}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->access$000(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    invoke-static {v3}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->access$100(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;II)V

    iput-object v1, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->mutated:Z

    :cond_1
    return-object p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->state:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->getConstantStateFrom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->access$202(Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->mutated:Z

    :cond_0
    return-void
.end method
