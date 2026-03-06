.class Lcom/system/DroidX/utils/LocationHelper$1;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/system/DroidX/utils/LocationHelper;->requestSingleLocationUpdate(Lcom/system/DroidX/utils/LocationHelper$LocationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/system/DroidX/utils/LocationHelper;

.field final synthetic val$callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

.field final synthetic val$locationReceived:[Z

.field final synthetic val$timeoutHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/system/DroidX/utils/LocationHelper;[ZLandroid/os/Handler;Lcom/system/DroidX/utils/LocationHelper$LocationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 76
    iput-object p1, p0, Lcom/system/DroidX/utils/LocationHelper$1;->this$0:Lcom/system/DroidX/utils/LocationHelper;

    iput-object p2, p0, Lcom/system/DroidX/utils/LocationHelper$1;->val$locationReceived:[Z

    iput-object p3, p0, Lcom/system/DroidX/utils/LocationHelper$1;->val$timeoutHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/system/DroidX/utils/LocationHelper$1;->val$callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 80
    const-string v0, "LocationHelper"

    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper$1;->val$locationReceived:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 81
    aput-boolean v3, v1, v2

    .line 82
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper$1;->val$timeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper$1;->this$0:Lcom/system/DroidX/utils/LocationHelper;

    invoke-static {v1}, Lcom/system/DroidX/utils/LocationHelper;->-$$Nest$fgetlocationManager(Lcom/system/DroidX/utils/LocationHelper;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 86
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper$1;->val$callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper$1;->this$0:Lcom/system/DroidX/utils/LocationHelper;

    const-string v2, "FRESH"

    invoke-static {v1, p1, v2}, Lcom/system/DroidX/utils/LocationHelper;->-$$Nest$mformatLocationData(Lcom/system/DroidX/utils/LocationHelper;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper$1;->val$callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    invoke-interface {v1, p1}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationUpdate(Ljava/lang/String;)V

    .line 90
    :cond_0
    const-string p1, "Single location update received and listener removed"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Security exception removing updates: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper$1;->val$locationReceived:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper$1;->val$callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Provider disabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
