.class public final Lcom/google/android/material/navigation/NavigationBarMenu;
.super Landroidx/appcompat/view/menu/MenuBuilder;
.source "NavigationBarMenu.java"


# static fields
.field public static final NO_MAX_ITEM_LIMIT:I = 0x7fffffff


# instance fields
.field private final maxItemCount:I

.field private final subMenuSupported:Z

.field private final viewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;IZ)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    .line 55
    iput p3, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    .line 56
    iput-boolean p4, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->subMenuSupported:Z

    return-void
.end method


# virtual methods
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenu;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    if-gt v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenu;->stopDispatchingItemsChanged()V

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 94
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenu;->startDispatchingItemsChanged()V

    return-object p1

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 83
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Maximum number of items supported by "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ". Limit can be checked with "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "#getMaxItemCount()"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->subMenuSupported:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/navigation/NavigationBarMenu;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 72
    new-instance p2, Lcom/google/android/material/navigation/NavigationBarSubMenu;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0, p1}, Lcom/google/android/material/navigation/NavigationBarSubMenu;-><init>(Landroid/content/Context;Lcom/google/android/material/navigation/NavigationBarMenu;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 73
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    return-object p2

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    .line 69
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " does not support submenus"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaxItemCount()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    return v0
.end method
