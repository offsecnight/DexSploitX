.class public Lcom/google/android/material/navigation/NavigationBarSubheaderView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarSubheaderView.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationBarMenuItemView;


# instance fields
.field private expanded:Z

.field private itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field onlyShowWhenExpanded:Z

.field private final subheaderLabel:Landroid/widget/TextView;

.field private textColor:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$layout;->m3_navigation_menu_subheader:I

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    sget p1, Lcom/google/android/material/R$id;->navigation_menu_subheader_label:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->subheaderLabel:Landroid/widget/TextView;

    return-void
.end method

.method private updateVisibility()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->expanded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->onlyShowWhenExpanded:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 p2, 0x0

    .line 61
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 62
    iget-object p2, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->subheaderLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->updateVisibility()V

    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->expanded:Z

    return v0
.end method

.method public isOnlyVisibleWhenExpanded()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->onlyShowWhenExpanded:Z

    return v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->expanded:Z

    .line 119
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->updateVisibility()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setOnlyShowWhenExpanded(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->onlyShowWhenExpanded:Z

    .line 130
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->updateVisibility()V

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->subheaderLabel:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 70
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->textColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->subheaderLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 76
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->textColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarSubheaderView;->subheaderLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public showsIcon()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
