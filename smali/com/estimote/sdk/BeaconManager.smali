.class public Lcom/estimote/sdk/BeaconManager;
.super Ljava/lang/Object;
.source "BeaconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/estimote/sdk/BeaconManager$IncomingHandler;,
        Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;,
        Lcom/estimote/sdk/BeaconManager$ErrorListener;,
        Lcom/estimote/sdk/BeaconManager$MonitoringListener;,
        Lcom/estimote/sdk/BeaconManager$RangingListener;,
        Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;
    }
.end annotation


# static fields
.field private static final ANDROID_MANIFEST_CONDITIONS_MSG:Ljava/lang/String; = "AndroidManifest.xml does not contain android.permission.BLUETOOTH or android.permission.BLUETOOTH_ADMIN permissions. BeaconService may be also not declared in AndroidManifest.xml."


# instance fields
.field private backgroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

.field private callback:Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;

.field private final context:Landroid/content/Context;

.field private errorListener:Lcom/estimote/sdk/BeaconManager$ErrorListener;

.field private foregroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

.field private final incomingMessenger:Landroid/os/Messenger;

.field private final monitoredRegionIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private monitoringListener:Lcom/estimote/sdk/BeaconManager$MonitoringListener;

.field private final rangedRegionIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rangingListener:Lcom/estimote/sdk/BeaconManager$RangingListener;

.field private final serviceConnection:Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;

.field private serviceMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {p1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager;->context:Landroid/content/Context;

    .line 161
    new-instance p1, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;-><init>(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/BeaconManager$1;)V

    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager;->serviceConnection:Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;

    .line 162
    new-instance p1, Landroid/os/Messenger;

    new-instance v1, Lcom/estimote/sdk/BeaconManager$IncomingHandler;

    invoke-direct {v1, p0, v0}, Lcom/estimote/sdk/BeaconManager$IncomingHandler;-><init>(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/BeaconManager$1;)V

    invoke-direct {p1, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager;->incomingMessenger:Landroid/os/Messenger;

    .line 163
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager;->rangedRegionIds:Ljava/util/Set;

    .line 164
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager;->monitoredRegionIds:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$1000(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$MonitoringListener;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/estimote/sdk/BeaconManager;->monitoringListener:Lcom/estimote/sdk/BeaconManager$MonitoringListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/estimote/sdk/BeaconManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$300(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$ErrorListener;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/estimote/sdk/BeaconManager;->errorListener:Lcom/estimote/sdk/BeaconManager$ErrorListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/estimote/sdk/BeaconManager;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/estimote/sdk/BeaconManager;->registerErrorListenerInService()V

    return-void
.end method

.method static synthetic access$500(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/service/ScanPeriodData;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/estimote/sdk/BeaconManager;->foregroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    return-object p0
.end method

.method static synthetic access$502(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/service/ScanPeriodData;)Lcom/estimote/sdk/service/ScanPeriodData;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager;->foregroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    return-object p1
.end method

.method static synthetic access$600(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/service/ScanPeriodData;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/estimote/sdk/BeaconManager;->setScanPeriod(Lcom/estimote/sdk/service/ScanPeriodData;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/service/ScanPeriodData;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/estimote/sdk/BeaconManager;->backgroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    return-object p0
.end method

.method static synthetic access$702(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/service/ScanPeriodData;)Lcom/estimote/sdk/service/ScanPeriodData;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager;->backgroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    return-object p1
.end method

.method static synthetic access$800(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/estimote/sdk/BeaconManager;->callback:Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;

    return-object p0
.end method

.method static synthetic access$802(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;)Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager;->callback:Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;

    return-object p1
.end method

.method static synthetic access$900(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$RangingListener;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/estimote/sdk/BeaconManager;->rangingListener:Lcom/estimote/sdk/BeaconManager$RangingListener;

    return-object p0
.end method

.method private internalStopMonitoring(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager;->monitoredRegionIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 429
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "regionId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :try_start_0
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error while stopping ranging"

    .line 434
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;)V

    .line 435
    throw p1
.end method

.method private internalStopRanging(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager;->rangedRegionIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 385
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "regionId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :try_start_0
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error while stopping ranging"

    .line 390
    invoke-static {v0, p1}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    throw p1
.end method

.method private isConnectedToService()Z
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerErrorListenerInService()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 334
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/estimote/sdk/BeaconManager;->incomingMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/estimote/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Error while registering error listener"

    .line 339
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setScanPeriod(Lcom/estimote/sdk/service/ScanPeriodData;I)V
    .locals 3

    const/4 v0, 0x0

    .line 324
    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "scanPeriod"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 327
    :try_start_0
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while setting scan periods: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkPermissionsAndService()Z
    .locals 6

    .line 198
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    .line 199
    iget-object v2, p0, Lcom/estimote/sdk/BeaconManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    .line 200
    iget-object v3, p0, Lcom/estimote/sdk/BeaconManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 202
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/estimote/sdk/BeaconManager;->context:Landroid/content/Context;

    const-class v5, Lcom/estimote/sdk/service/BeaconService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000

    .line 203
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public connect(Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;)V
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/estimote/sdk/BeaconManager;->checkPermissionsAndService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AndroidManifest.xml does not contain android.permission.BLUETOOTH or android.permission.BLUETOOTH_ADMIN permissions. BeaconService may be also not declared in AndroidManifest.xml."

    .line 217
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;)V

    :cond_0
    const-string v0, "callback cannot be null"

    .line 219
    invoke-static {p1, v0}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;

    iput-object v0, p0, Lcom/estimote/sdk/BeaconManager;->callback:Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;

    .line 220
    invoke-direct {p0}, Lcom/estimote/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-interface {p1}, Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;->onServiceReady()V

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estimote/sdk/BeaconManager;->context:Landroid/content/Context;

    const-class v2, Lcom/estimote/sdk/service/BeaconService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estimote/sdk/BeaconManager;->serviceConnection:Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Could not bind service: make sure thatcom.estimote.sdk.service.BeaconService is declared in AndroidManifest.xml"

    .line 228
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 239
    invoke-direct {p0}, Lcom/estimote/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Not disconnecting because was not connected to service"

    .line 240
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->i(Ljava/lang/String;)V

    return-void

    .line 243
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/estimote/sdk/BeaconManager;->rangedRegionIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 244
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    :try_start_0
    invoke-direct {p0, v1}, Lcom/estimote/sdk/BeaconManager;->internalStopRanging(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Swallowing error while disconnect/stopRanging"

    .line 248
    invoke-static {v2, v1}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 251
    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/estimote/sdk/BeaconManager;->monitoredRegionIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 252
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    :try_start_1
    invoke-direct {p0, v1}, Lcom/estimote/sdk/BeaconManager;->internalStopMonitoring(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Swallowing error while disconnect/stopMonitoring"

    .line 256
    invoke-static {v2, v1}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/estimote/sdk/BeaconManager;->serviceConnection:Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/estimote/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public hasBluetooth()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothEnabled()Z
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/estimote/sdk/BeaconManager;->checkPermissionsAndService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "AndroidManifest.xml does not contain android.permission.BLUETOOTH or android.permission.BLUETOOTH_ADMIN permissions. BeaconService may be also not declared in AndroidManifest.xml."

    .line 182
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;)V

    return v1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager;->context:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 186
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setBackgroundScanPeriod(JJ)V
    .locals 1

    .line 316
    invoke-direct {p0}, Lcom/estimote/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Lcom/estimote/sdk/service/ScanPeriodData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/estimote/sdk/service/ScanPeriodData;-><init>(JJ)V

    const/16 p1, 0xa

    invoke-direct {p0, v0, p1}, Lcom/estimote/sdk/BeaconManager;->setScanPeriod(Lcom/estimote/sdk/service/ScanPeriodData;I)V

    goto :goto_0

    .line 319
    :cond_0
    new-instance v0, Lcom/estimote/sdk/service/ScanPeriodData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/estimote/sdk/service/ScanPeriodData;-><init>(JJ)V

    iput-object v0, p0, Lcom/estimote/sdk/BeaconManager;->backgroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    :goto_0
    return-void
.end method

.method public setErrorListener(Lcom/estimote/sdk/BeaconManager$ErrorListener;)V
    .locals 1

    .line 287
    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager;->errorListener:Lcom/estimote/sdk/BeaconManager$ErrorListener;

    .line 288
    invoke-direct {p0}, Lcom/estimote/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/estimote/sdk/BeaconManager;->registerErrorListenerInService()V

    :cond_0
    return-void
.end method

.method public setForegroundScanPeriod(JJ)V
    .locals 1

    .line 301
    invoke-direct {p0}, Lcom/estimote/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Lcom/estimote/sdk/service/ScanPeriodData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/estimote/sdk/service/ScanPeriodData;-><init>(JJ)V

    const/16 p1, 0x9

    invoke-direct {p0, v0, p1}, Lcom/estimote/sdk/BeaconManager;->setScanPeriod(Lcom/estimote/sdk/service/ScanPeriodData;I)V

    goto :goto_0

    .line 304
    :cond_0
    new-instance v0, Lcom/estimote/sdk/service/ScanPeriodData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/estimote/sdk/service/ScanPeriodData;-><init>(JJ)V

    iput-object v0, p0, Lcom/estimote/sdk/BeaconManager;->foregroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    :goto_0
    return-void
.end method

.method public setMonitoringListener(Lcom/estimote/sdk/BeaconManager$MonitoringListener;)V
    .locals 1

    const-string v0, "listener cannot be null"

    .line 278
    invoke-static {p1, v0}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/BeaconManager$MonitoringListener;

    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager;->monitoringListener:Lcom/estimote/sdk/BeaconManager$MonitoringListener;

    return-void
.end method

.method public setRangingListener(Lcom/estimote/sdk/BeaconManager$RangingListener;)V
    .locals 1

    const-string v0, "listener cannot be null"

    .line 269
    invoke-static {p1, v0}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/BeaconManager$RangingListener;

    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager;->rangingListener:Lcom/estimote/sdk/BeaconManager$RangingListener;

    return-void
.end method

.method public startMonitoring(Lcom/estimote/sdk/Region;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    invoke-direct {p0}, Lcom/estimote/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Not starting monitoring, not connected to service"

    .line 397
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "region cannot be null"

    .line 400
    invoke-static {p1, v0}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager;->monitoredRegionIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Region already monitored but that\'s OK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->i(Ljava/lang/String;)V

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager;->monitoredRegionIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 407
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "region"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 409
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager;->incomingMessenger:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 411
    :try_start_0
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error while starting monitoring"

    .line 413
    invoke-static {v0, p1}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    throw p1
.end method

.method public startRanging(Lcom/estimote/sdk/Region;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Lcom/estimote/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Not starting ranging, not connected to service"

    .line 353
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "region cannot be null"

    .line 356
    invoke-static {p1, v0}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager;->rangedRegionIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Region already ranged but that\'s OK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->i(Ljava/lang/String;)V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager;->rangedRegionIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 363
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "region"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 365
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager;->incomingMessenger:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 367
    :try_start_0
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error while starting ranging"

    .line 369
    invoke-static {v0, p1}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    throw p1
.end method

.method public stopMonitoring(Lcom/estimote/sdk/Region;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-direct {p0}, Lcom/estimote/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Not stopping monitoring, not connected to service"

    .line 420
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "region cannot be null"

    .line 423
    invoke-static {p1, v0}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/estimote/sdk/BeaconManager;->internalStopMonitoring(Ljava/lang/String;)V

    return-void
.end method

.method public stopRanging(Lcom/estimote/sdk/Region;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    invoke-direct {p0}, Lcom/estimote/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Not stopping ranging, not connected to service"

    .line 376
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "region cannot be null"

    .line 379
    invoke-static {p1, v0}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {p1}, Lcom/estimote/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/estimote/sdk/BeaconManager;->internalStopRanging(Ljava/lang/String;)V

    return-void
.end method
