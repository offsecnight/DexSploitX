.class final Landroidx/activity/EdgeToEdgeApi35;
.super Landroidx/activity/EdgeToEdgeApi30;
.source "EdgeToEdge.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J8\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0017\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/activity/EdgeToEdgeApi35;",
        "Landroidx/activity/EdgeToEdgeApi30;",
        "<init>",
        "()V",
        "setUp",
        "",
        "statusBarStyle",
        "Landroidx/activity/SystemBarStyle;",
        "navigationBarStyle",
        "window",
        "Landroid/view/Window;",
        "view",
        "Landroid/view/View;",
        "statusBarIsDark",
        "",
        "navigationBarIsDark",
        "activity"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Landroidx/activity/EdgeToEdgeApi30;-><init>()V

    return-void
.end method


# virtual methods
.method public setUp(Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;Landroid/view/Window;Landroid/view/View;ZZ)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    const-string v6, "statusBarStyle"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "navigationBarStyle"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "window"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "view"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 331
    invoke-static {v2, v6}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 336
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 338
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x100

    const/4 v9, 0x1

    if-nez v8, :cond_0

    .line 339
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x2

    if-ne v8, v10, :cond_0

    .line 340
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v7, v10, :cond_1

    .line 342
    :cond_0
    invoke-virtual {v2, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 343
    invoke-virtual {v2, v6}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 344
    invoke-virtual {v0, v4}, Landroidx/activity/SystemBarStyle;->getScrimWithEnforcedContrast$activity(Z)I

    move-result v0

    .line 345
    invoke-virtual {v1, v5}, Landroidx/activity/SystemBarStyle;->getScrimWithEnforcedContrast$activity(Z)I

    move-result v7

    .line 346
    move-object v8, v3

    check-cast v8, Landroid/view/ViewGroup;

    .line 347
    new-instance v10, Landroidx/core/view/insets/ProtectionLayout;

    .line 348
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x4

    .line 350
    new-array v13, v12, [Landroidx/core/view/insets/ColorProtection;

    new-instance v14, Landroidx/core/view/insets/ColorProtection;

    const/4 v15, 0x2

    invoke-direct {v14, v15, v0}, Landroidx/core/view/insets/ColorProtection;-><init>(II)V

    aput-object v14, v13, v6

    .line 351
    new-instance v0, Landroidx/core/view/insets/ColorProtection;

    invoke-direct {v0, v9, v7}, Landroidx/core/view/insets/ColorProtection;-><init>(II)V

    aput-object v0, v13, v9

    .line 352
    new-instance v0, Landroidx/core/view/insets/ColorProtection;

    invoke-direct {v0, v12, v7}, Landroidx/core/view/insets/ColorProtection;-><init>(II)V

    aput-object v0, v13, v15

    .line 353
    new-instance v0, Landroidx/core/view/insets/ColorProtection;

    const/16 v12, 0x8

    invoke-direct {v0, v12, v7}, Landroidx/core/view/insets/ColorProtection;-><init>(II)V

    const/4 v7, 0x3

    aput-object v0, v13, v7

    .line 349
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 347
    invoke-direct {v10, v11, v0}, Landroidx/core/view/insets/ProtectionLayout;-><init>(Landroid/content/Context;Ljava/util/List;)V

    check-cast v10, Landroid/view/View;

    .line 346
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 359
    :cond_1
    invoke-virtual {v1}, Landroidx/activity/SystemBarStyle;->getNightMode$activity()I

    move-result v0

    if-nez v0, :cond_2

    move v6, v9

    .line 358
    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 360
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v0, v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    xor-int/lit8 v1, v4, 0x1

    .line 361
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    xor-int/lit8 v1, v5, 0x1

    .line 362
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    return-void
.end method
