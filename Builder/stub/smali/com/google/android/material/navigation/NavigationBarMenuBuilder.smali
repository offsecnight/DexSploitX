.class public Lcom/google/android/material/navigation/NavigationBarMenuBuilder;
.super Ljava/lang/Object;
.source "NavigationBarMenuBuilder.java"


# instance fields
.field private contentItemCount:I

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final menuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

.field private visibleContentItemCount:I

.field private visibleMainItemCount:I


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->contentItemCount:I

    .line 41
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->visibleContentItemCount:I

    .line 42
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->visibleMainItemCount:I

    .line 45
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->menuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->refreshItems()V

    return-void
.end method


# virtual methods
.method public getContentItemCount()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->contentItemCount:I

    return v0
.end method

.method public getItemAt(I)Landroid/view/MenuItem;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public getVisibleContentItemCount()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->visibleContentItemCount:I

    return v0
.end method

.method public getVisibleMainContentItemCount()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->visibleMainItemCount:I

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->menuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result p1

    return p1
.end method

.method public refreshItems()V
    .locals 7

    .line 101
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->contentItemCount:I

    .line 103
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->visibleContentItemCount:I

    .line 104
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->visibleMainItemCount:I

    move v1, v0

    .line 105
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->menuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 106
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->menuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 107
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    .line 109
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/navigation/DividerMenuItem;

    if-nez v3, :cond_0

    .line 110
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    new-instance v4, Lcom/google/android/material/navigation/DividerMenuItem;

    invoke-direct {v4}, Lcom/google/android/material/navigation/DividerMenuItem;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    move v4, v0

    .line 115
    :goto_1
    invoke-interface {v3}, Landroid/view/SubMenu;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 116
    invoke-interface {v3, v4}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 117
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-nez v6, :cond_1

    .line 118
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 120
    :cond_1
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->contentItemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->contentItemCount:I

    .line 122
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->visibleContentItemCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->visibleContentItemCount:I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 126
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    new-instance v3, Lcom/google/android/material/navigation/DividerMenuItem;

    invoke-direct {v3}, Lcom/google/android/material/navigation/DividerMenuItem;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 128
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->contentItemCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->contentItemCount:I

    .line 130
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 131
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->visibleContentItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->visibleContentItemCount:I

    .line 132
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->visibleMainItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->visibleMainItemCount:I

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 137
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/navigation/DividerMenuItem;

    if-eqz v0, :cond_7

    .line 138
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public size()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
