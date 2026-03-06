.class public final synthetic Lcom/system/DroidX/utils/LocationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/system/DroidX/utils/LocationHelper;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Landroid/location/LocationListener;

.field public final synthetic f$3:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/system/DroidX/utils/LocationHelper;[ZLandroid/location/LocationListener;Lcom/system/DroidX/utils/LocationHelper$LocationCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/system/DroidX/utils/LocationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/system/DroidX/utils/LocationHelper;

    iput-object p2, p0, Lcom/system/DroidX/utils/LocationHelper$$ExternalSyntheticLambda0;->f$1:[Z

    iput-object p3, p0, Lcom/system/DroidX/utils/LocationHelper$$ExternalSyntheticLambda0;->f$2:Landroid/location/LocationListener;

    iput-object p4, p0, Lcom/system/DroidX/utils/LocationHelper$$ExternalSyntheticLambda0;->f$3:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/system/DroidX/utils/LocationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/system/DroidX/utils/LocationHelper;

    iget-object v1, p0, Lcom/system/DroidX/utils/LocationHelper$$ExternalSyntheticLambda0;->f$1:[Z

    iget-object v2, p0, Lcom/system/DroidX/utils/LocationHelper$$ExternalSyntheticLambda0;->f$2:Landroid/location/LocationListener;

    iget-object v3, p0, Lcom/system/DroidX/utils/LocationHelper$$ExternalSyntheticLambda0;->f$3:Lcom/system/DroidX/utils/LocationHelper$LocationCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/system/DroidX/utils/LocationHelper;->lambda$requestSingleLocationUpdate$0$com-system-DroidX-utils-LocationHelper([ZLandroid/location/LocationListener;Lcom/system/DroidX/utils/LocationHelper$LocationCallback;)V

    return-void
.end method
