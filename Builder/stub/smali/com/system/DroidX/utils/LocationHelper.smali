.class public Lcom/system/DroidX/utils/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/system/DroidX/utils/LocationHelper$LocationCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationHelper"


# instance fields
.field private callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

.field private context:Landroid/content/Context;

.field private isTracking:Z

.field private locationManager:Landroid/location/LocationManager;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetlocationManager(Lcom/system/DroidX/utils/LocationHelper;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mformatLocationData(Lcom/system/DroidX/utils/LocationHelper;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/system/DroidX/utils/LocationHelper;->formatLocationData(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/system/DroidX/utils/LocationHelper;->isTracking:Z

    .line 32
    iput-object p1, p0, Lcom/system/DroidX/utils/LocationHelper;->context:Landroid/content/Context;

    .line 33
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/system/DroidX/utils/LocationHelper;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private formatLocationData(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 304
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 305
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LOCATION:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "|LAT:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "|LON:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "|ACC:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "m|ALT:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result p2

    const-string v2, "N/A"

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "m"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "|SPEED:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "m/s"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "|PROVIDER:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "|TIME:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "|URL:https://maps.google.com/maps?q="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCurrentLocation()Ljava/lang/String;
    .locals 8

    const-string v0, "Network last known: "

    const-string v1, "GPS last known: "

    const-string v2, "ERROR:Last known location is too old ("

    .line 155
    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->hasLocationPermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    const-string v0, "ERROR:Location permission not granted - Please grant location permission in app settings"

    return-object v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->isGPSEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->isNetworkLocationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    const-string v0, "ERROR:GPS and Network location are disabled - Please enable location services or use \'enablegps\' command"

    return-object v0

    .line 167
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->isGPSEnabled()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Available"

    const-string v5, "Not available"

    const-string v6, "LocationHelper"

    if-eqz v3, :cond_3

    .line 168
    :try_start_1
    iget-object v3, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    const-string v7, "gps"

    invoke-virtual {v3, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v7, v4

    goto :goto_0

    :cond_2
    move-object v7, v5

    .line 169
    :goto_0
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_5

    .line 173
    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->isNetworkLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v5

    .line 175
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v3, :cond_7

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x493e0

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v4, 0xea60

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes) - Try starting live location tracking first"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_6
    const-string v0, "CACHED"

    invoke-direct {p0, v3, v0}, Lcom/system/DroidX/utils/LocationHelper;->formatLocationData(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_7
    const-string v0, "ERROR:No location available - Try starting live location tracking first to get fresh location"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR:Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR:Security exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastKnownLocationQuick()Ljava/lang/String;
    .locals 8

    const-string v0, "CACHED("

    .line 196
    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->hasLocationPermission()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 204
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->isGPSEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->isNetworkLocationEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    .line 216
    const-string v0, "CACHED"

    goto :goto_1

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr v3, v5

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "m old)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/system/DroidX/utils/LocationHelper;->formatLocationData(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    return-object v2

    :catch_0
    move-exception v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error getting last known location: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public hasBackgroundLocationPermission()Z
    .locals 3

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public hasLocationPermission()Z
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 43
    :goto_0
    iget-object v3, p0, Lcom/system/DroidX/utils/LocationHelper;->context:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v4}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v1
.end method

.method public isGPSEnabled()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNetworkLocationEnabled()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTracking()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/system/DroidX/utils/LocationHelper;->isTracking:Z

    return v0
.end method

.method synthetic lambda$requestSingleLocationUpdate$0$com-system-DroidX-utils-LocationHelper([ZLandroid/location/LocationListener;Lcom/system/DroidX/utils/LocationHelper$LocationCallback;)V
    .locals 3

    .line 113
    const-string v0, "LocationHelper"

    const/4 v1, 0x0

    aget-boolean v2, p1, v1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 114
    aput-boolean v2, p1, v1

    .line 116
    :try_start_0
    iget-object p1, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    if-eqz p3, :cond_0

    .line 118
    const-string p1, "Timeout: Could not get fresh location in 2 seconds"

    invoke-interface {p3, p1}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationError(Ljava/lang/String;)V

    .line 120
    :cond_0
    const-string p1, "Location request timed out after 2 seconds"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Security exception on timeout: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "LIVE"

    invoke-direct {p0, p1, v0}, Lcom/system/DroidX/utils/LocationHelper;->formatLocationData(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 327
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    invoke-interface {v0, p1}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationUpdate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Provider disabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocationHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    if-eqz v0, :cond_0

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Provider enabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocationHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 333
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Provider status changed: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocationHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestSingleLocationUpdate(Lcom/system/DroidX/utils/LocationHelper$LocationCallback;)V
    .locals 7

    .line 64
    const-string v0, "LocationHelper"

    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->hasLocationPermission()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_3

    .line 66
    const-string v0, "Location permission not granted"

    invoke-interface {p1, v0}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationError(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x1

    .line 74
    new-array v2, v2, [Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    .line 76
    new-instance v3, Lcom/system/DroidX/utils/LocationHelper$1;

    invoke-direct {v3, p0, v2, v1, p1}, Lcom/system/DroidX/utils/LocationHelper$1;-><init>(Lcom/system/DroidX/utils/LocationHelper;[ZLandroid/os/Handler;Lcom/system/DroidX/utils/LocationHelper$LocationCallback;)V

    .line 112
    new-instance v4, Lcom/system/DroidX/utils/LocationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v3, p1}, Lcom/system/DroidX/utils/LocationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/system/DroidX/utils/LocationHelper;[ZLandroid/location/LocationListener;Lcom/system/DroidX/utils/LocationHelper$LocationCallback;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->isNetworkLocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    iget-object v4, p0, Lcom/system/DroidX/utils/LocationHelper;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 130
    const-string v1, "Requested single Network update (2s timeout)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->isGPSEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    iget-object v4, p0, Lcom/system/DroidX/utils/LocationHelper;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 133
    const-string v1, "Requested single GPS update (2s timeout)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 135
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 137
    const-string v1, "No location providers available"

    invoke-interface {p1, v1}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception requesting single update: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationError(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security exception requesting single update: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Security exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationError(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setCallback(Lcom/system/DroidX/utils/LocationHelper$LocationCallback;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/system/DroidX/utils/LocationHelper;->callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    return-void
.end method

.method public startLiveTracking()Z
    .locals 10

    .line 228
    const-string v7, "LocationHelper"

    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->hasLocationPermission()Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    if-eqz v0, :cond_0

    .line 230
    const-string v1, "Location permission not granted - Please grant location permission in app settings"

    invoke-interface {v0, v1}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationError(Ljava/lang/String;)V

    :cond_0
    return v8

    .line 235
    :cond_1
    iget-boolean v0, p0, Lcom/system/DroidX/utils/LocationHelper;->isTracking:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    return v9

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/system/DroidX/utils/LocationHelper;->hasBackgroundLocationPermission()Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    if-eqz v0, :cond_3

    .line 242
    const-string v1, "Background location permission not granted - Location tracking may be limited when app is in background"

    invoke-interface {v0, v1}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationError(Ljava/lang/String;)V

    .line 248
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v2, p0, Lcom/system/DroidX/utils/LocationHelper;->mainHandler:Landroid/os/Handler;

    .line 254
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    const-wide/16 v2, 0x1388

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    .line 249
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 256
    const-string v0, "GPS tracking started"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_4
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v2, p0, Lcom/system/DroidX/utils/LocationHelper;->mainHandler:Landroid/os/Handler;

    .line 265
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    const-wide/16 v2, 0x2710

    const/high16 v4, 0x42480000    # 50.0f

    move-object v5, p0

    .line 260
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 267
    const-string v0, "Network tracking started"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_5
    iput-boolean v9, p0, Lcom/system/DroidX/utils/LocationHelper;->isTracking:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :catch_0
    move-exception v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper;->callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    if-eqz v1, :cond_6

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationError(Ljava/lang/String;)V

    :cond_6
    return v8

    :catch_1
    move-exception v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Security exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper;->callback:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    if-eqz v1, :cond_7

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/system/DroidX/utils/LocationHelper$LocationCallback;->onLocationError(Ljava/lang/String;)V

    :cond_7
    return v8
.end method

.method public stopLiveTracking()V
    .locals 4

    .line 288
    const-string v0, "LocationHelper"

    iget-boolean v1, p0, Lcom/system/DroidX/utils/LocationHelper;->isTracking:Z

    if-eqz v1, :cond_0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    .line 291
    iput-boolean v1, p0, Lcom/system/DroidX/utils/LocationHelper;->isTracking:Z

    .line 292
    const-string v1, "Location tracking stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security exception while stopping: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
