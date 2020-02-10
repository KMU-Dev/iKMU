.class public Lcom/estimote/sdk/service/BeaconService;
.super Landroid/app/Service;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/estimote/sdk/service/BeaconService$InternalLeScanCallback;,
        Lcom/estimote/sdk/service/BeaconService$IncomingHandler;,
        Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;
    }
.end annotation


# static fields
.field private static final AFTER_SCAN_ACTION_NAME:Ljava/lang/String; = "afterScan"

.field private static final AFTER_SCAN_INTENT:Landroid/content/Intent;

.field public static final ERROR_COULD_NOT_START_LOW_ENERGY_SCANNING:I = -0x1

.field public static final ERROR_ID_KEY:Ljava/lang/String; = "errorId"

.field static final EXPIRATION_MILLIS:J

.field public static final MONITORING_RESULT_KEY:Ljava/lang/String; = "monitoringResult"

.field public static final MSG_ERROR_RESPONSE:I = 0x8

.field public static final MSG_MONITORING_RESPONSE:I = 0x6

.field public static final MSG_RANGING_RESPONSE:I = 0x3

.field public static final MSG_REGISTER_ERROR_LISTENER:I = 0x7

.field public static final MSG_SET_BACKGROUND_SCAN_PERIOD:I = 0xa

.field public static final MSG_SET_FOREGROUND_SCAN_PERIOD:I = 0x9

.field public static final MSG_START_MONITORING:I = 0x4

.field public static final MSG_START_RANGING:I = 0x1

.field public static final MSG_STOP_MONITORING:I = 0x5

.field public static final MSG_STOP_RANGING:I = 0x2

.field public static final RANGING_RESULT_KEY:Ljava/lang/String; = "rangingResult"

.field public static final REGION_ID_KEY:Ljava/lang/String; = "regionId"

.field public static final REGION_KEY:Ljava/lang/String; = "region"

.field public static final SCAN_PERIOD_KEY:Ljava/lang/String; = "scanPeriod"

.field private static final SCAN_START_ACTION_NAME:Ljava/lang/String; = "startScan"

.field private static final SCAN_START_INTENT:Landroid/content/Intent;


# instance fields
.field private adapter:Landroid/bluetooth/BluetoothAdapter;

.field private afterScanBroadcastPendingIntent:Landroid/app/PendingIntent;

.field private afterScanBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private afterScanCycleTask:Ljava/lang/Runnable;

.field private alarmManager:Landroid/app/AlarmManager;

.field private backgroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

.field private final beaconsFoundInScanCycle:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/estimote/sdk/Beacon;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private errorReplyTo:Landroid/os/Messenger;

.field private foregroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private final leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final messenger:Landroid/os/Messenger;

.field private final monitoredRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/estimote/sdk/service/MonitoringRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final rangedRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/estimote/sdk/service/RangingRegion;",
            ">;"
        }
    .end annotation
.end field

.field private scanStartBroadcastPendingIntent:Landroid/app/PendingIntent;

.field private scanStartBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private scanning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 133
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/estimote/sdk/service/BeaconService;->EXPIRATION_MILLIS:J

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "startScan"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estimote/sdk/service/BeaconService;->SCAN_START_INTENT:Landroid/content/Intent;

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "afterScan"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estimote/sdk/service/BeaconService;->AFTER_SCAN_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 141
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estimote/sdk/service/BeaconService$IncomingHandler;-><init>(Lcom/estimote/sdk/service/BeaconService;Lcom/estimote/sdk/service/BeaconService$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->messenger:Landroid/os/Messenger;

    .line 144
    new-instance v0, Lcom/estimote/sdk/service/BeaconService$InternalLeScanCallback;

    invoke-direct {v0, p0, v2}, Lcom/estimote/sdk/service/BeaconService$InternalLeScanCallback;-><init>(Lcom/estimote/sdk/service/BeaconService;Lcom/estimote/sdk/service/BeaconService$1;)V

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 147
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->beaconsFoundInScanCycle:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->rangedRegions:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->monitoredRegions:Ljava/util/List;

    .line 177
    new-instance v0, Lcom/estimote/sdk/service/ScanPeriodData;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estimote/sdk/service/ScanPeriodData;-><init>(JJ)V

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->foregroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    .line 180
    new-instance v0, Lcom/estimote/sdk/service/ScanPeriodData;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estimote/sdk/service/ScanPeriodData;-><init>(JJ)V

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->backgroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    return-void
.end method

.method static synthetic access$1000(Lcom/estimote/sdk/service/BeaconService;)Landroid/app/PendingIntent;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/estimote/sdk/service/BeaconService;->scanStartBroadcastPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/estimote/sdk/service/BeaconService;Landroid/app/PendingIntent;J)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/estimote/sdk/service/BeaconService;->setAlarm(Landroid/app/PendingIntent;J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/estimote/sdk/service/BeaconService;Lcom/estimote/sdk/service/RangingRegion;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/estimote/sdk/service/BeaconService;->startRanging(Lcom/estimote/sdk/service/RangingRegion;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/estimote/sdk/service/BeaconService;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/estimote/sdk/service/BeaconService;->stopRanging(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/estimote/sdk/service/BeaconService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/estimote/sdk/service/BeaconService;->errorReplyTo:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/estimote/sdk/service/BeaconService;)Lcom/estimote/sdk/service/ScanPeriodData;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/estimote/sdk/service/BeaconService;->foregroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/estimote/sdk/service/BeaconService;Lcom/estimote/sdk/service/ScanPeriodData;)Lcom/estimote/sdk/service/ScanPeriodData;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/estimote/sdk/service/BeaconService;->foregroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/estimote/sdk/service/BeaconService;)Lcom/estimote/sdk/service/ScanPeriodData;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/estimote/sdk/service/BeaconService;->backgroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/estimote/sdk/service/BeaconService;Lcom/estimote/sdk/service/ScanPeriodData;)Lcom/estimote/sdk/service/ScanPeriodData;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/estimote/sdk/service/BeaconService;->backgroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/estimote/sdk/service/BeaconService;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/estimote/sdk/service/BeaconService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/estimote/sdk/service/BeaconService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->removeAfterScanCycleCallback()V

    return-void
.end method

.method static synthetic access$1900(Lcom/estimote/sdk/service/BeaconService;)Ljava/lang/Runnable;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/estimote/sdk/service/BeaconService;->afterScanCycleTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/estimote/sdk/service/BeaconService;->rangedRegions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/estimote/sdk/service/BeaconService;->beaconsFoundInScanCycle:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/estimote/sdk/service/BeaconService;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/estimote/sdk/service/BeaconService;->monitoredRegions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/estimote/sdk/service/BeaconService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->checkNotOnUiThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/estimote/sdk/service/BeaconService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->stopScanning()V

    return-void
.end method

.method static synthetic access$800(Lcom/estimote/sdk/service/BeaconService;)J
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->scanWaitTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/estimote/sdk/service/BeaconService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->startScanning()V

    return-void
.end method

.method private checkNotOnUiThread()V
    .locals 4

    .line 531
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This cannot be run on UI thread, starting BLE scan can be expensive"

    invoke-static {v0, v1}, Lcom/estimote/sdk/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 533
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "It must be executed on service\'s handlerThread"

    invoke-static {v0, v1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createAfterScanBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 581
    new-instance v0, Lcom/estimote/sdk/service/BeaconService$2;

    invoke-direct {v0, p0}, Lcom/estimote/sdk/service/BeaconService$2;-><init>(Lcom/estimote/sdk/service/BeaconService;)V

    return-object v0
.end method

.method private createBluetoothBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 542
    new-instance v0, Lcom/estimote/sdk/service/BeaconService$1;

    invoke-direct {v0, p0}, Lcom/estimote/sdk/service/BeaconService$1;-><init>(Lcom/estimote/sdk/service/BeaconService;)V

    return-object v0
.end method

.method private createScanStartBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 590
    new-instance v0, Lcom/estimote/sdk/service/BeaconService$3;

    invoke-direct {v0, p0}, Lcom/estimote/sdk/service/BeaconService$3;-><init>(Lcom/estimote/sdk/service/BeaconService;)V

    return-object v0
.end method

.method private removeAfterScanCycleCallback()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService;->afterScanCycleTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService;->afterScanBroadcastPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 577
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService;->scanStartBroadcastPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private scanPeriodTimeMillis()J
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->rangedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->foregroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    iget-wide v0, v0, Lcom/estimote/sdk/service/ScanPeriodData;->scanPeriodMillis:J

    return-wide v0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->backgroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    iget-wide v0, v0, Lcom/estimote/sdk/service/ScanPeriodData;->scanPeriodMillis:J

    return-wide v0
.end method

.method private scanWaitTimeMillis()J
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->rangedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->foregroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    iget-wide v0, v0, Lcom/estimote/sdk/service/ScanPeriodData;->waitTimeMillis:J

    return-wide v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->backgroundScanPeriod:Lcom/estimote/sdk/service/ScanPeriodData;

    iget-wide v0, v0, Lcom/estimote/sdk/service/ScanPeriodData;->waitTimeMillis:J

    return-wide v0
.end method

.method private sendError(Ljava/lang/Integer;)V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->errorReplyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 314
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "errorId"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    :try_start_0
    iget-object p1, p0, Lcom/estimote/sdk/service/BeaconService;->errorReplyTo:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error while reporting message, funny right?"

    .line 319
    invoke-static {v0, p1}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setAlarm(Landroid/app/PendingIntent;J)V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    const/4 p2, 0x2

    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private startRanging(Lcom/estimote/sdk/service/RangingRegion;)V
    .locals 2

    .line 230
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->checkNotOnUiThread()V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start ranging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/estimote/sdk/service/RangingRegion;->region:Lcom/estimote/sdk/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->v(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "Bluetooth adapter cannot be null"

    invoke-static {v0, v1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->rangedRegions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->startScanning()V

    return-void
.end method

.method private startScanning()V
    .locals 3

    .line 280
    iget-boolean v0, p0, Lcom/estimote/sdk/service/BeaconService;->scanning:Z

    if-eqz v0, :cond_0

    const-string v0, "Scanning already in progress, not starting one more"

    .line 281
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->d(Ljava/lang/String;)V

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->monitoredRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->rangedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Not starting scanning, no monitored on ranged regions"

    .line 285
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->d(Ljava/lang/String;)V

    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Bluetooth is disabled, not starting scanning"

    .line 289
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->d(Ljava/lang/String;)V

    return-void

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Bluetooth adapter did not start le scan"

    .line 293
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->wtf(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estimote/sdk/service/BeaconService;->sendError(Ljava/lang/Integer;)V

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/estimote/sdk/service/BeaconService;->scanning:Z

    .line 298
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->removeAfterScanCycleCallback()V

    .line 299
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->afterScanBroadcastPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->scanPeriodTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/estimote/sdk/service/BeaconService;->setAlarm(Landroid/app/PendingIntent;J)V

    return-void
.end method

.method private stopRanging(Ljava/lang/String;)V
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping ranging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->v(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->checkNotOnUiThread()V

    .line 240
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->rangedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 241
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estimote/sdk/service/RangingRegion;

    .line 243
    iget-object v1, v1, Lcom/estimote/sdk/service/RangingRegion;->region:Lcom/estimote/sdk/Region;

    invoke-virtual {v1}, Lcom/estimote/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/estimote/sdk/service/BeaconService;->rangedRegions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/estimote/sdk/service/BeaconService;->monitoredRegions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 248
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->removeAfterScanCycleCallback()V

    .line 249
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->stopScanning()V

    .line 250
    iget-object p1, p0, Lcom/estimote/sdk/service/BeaconService;->beaconsFoundInScanCycle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_2
    return-void
.end method

.method private stopScanning()V
    .locals 2

    const/4 v0, 0x0

    .line 305
    :try_start_0
    iput-boolean v0, p0, Lcom/estimote/sdk/service/BeaconService;->scanning:Z

    .line 306
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter throws unexpected exception"

    .line 308
    invoke-static {v1, v0}, Lcom/estimote/sdk/utils/L;->wtf(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 226
    iget-object p1, p0, Lcom/estimote/sdk/service/BeaconService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 185
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "Creating service"

    .line 186
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->i(Ljava/lang/String;)V

    const-string v0, "alarm"

    .line 188
    invoke-virtual {p0, v0}, Lcom/estimote/sdk/service/BeaconService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->alarmManager:Landroid/app/AlarmManager;

    const-string v0, "bluetooth"

    .line 189
    invoke-virtual {p0, v0}, Lcom/estimote/sdk/service/BeaconService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 190
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 191
    new-instance v0, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estimote/sdk/service/BeaconService$AfterScanCycleTask;-><init>(Lcom/estimote/sdk/service/BeaconService;Lcom/estimote/sdk/service/BeaconService$1;)V

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->afterScanCycleTask:Ljava/lang/Runnable;

    .line 193
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BeaconServiceThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->handlerThread:Landroid/os/HandlerThread;

    .line 194
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 195
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/estimote/sdk/service/BeaconService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->handler:Landroid/os/Handler;

    .line 197
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->createBluetoothBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->bluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->createScanStartBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->scanStartBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->createAfterScanBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->afterScanBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->bluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/estimote/sdk/service/BeaconService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->scanStartBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "startScan"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/estimote/sdk/service/BeaconService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->afterScanBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "afterScan"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/estimote/sdk/service/BeaconService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0}, Lcom/estimote/sdk/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/estimote/sdk/service/BeaconService;->AFTER_SCAN_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->afterScanBroadcastPendingIntent:Landroid/app/PendingIntent;

    .line 204
    invoke-virtual {p0}, Lcom/estimote/sdk/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/estimote/sdk/service/BeaconService;->SCAN_START_INTENT:Landroid/content/Intent;

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->scanStartBroadcastPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "Service destroyed"

    .line 209
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->i(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->bluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estimote/sdk/service/BeaconService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->scanStartBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estimote/sdk/service/BeaconService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->afterScanBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estimote/sdk/service/BeaconService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->stopScanning()V

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->removeAfterScanCycleCallback()V

    .line 219
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 221
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public startMonitoring(Lcom/estimote/sdk/service/MonitoringRegion;)V
    .locals 2

    .line 255
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->checkNotOnUiThread()V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting monitoring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/estimote/sdk/service/MonitoringRegion;->region:Lcom/estimote/sdk/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->v(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "Bluetooth adapter cannot be null"

    invoke-static {v0, v1}, Lcom/estimote/sdk/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->monitoredRegions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->startScanning()V

    return-void
.end method

.method public stopMonitoring(Ljava/lang/String;)V
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping monitoring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->v(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->checkNotOnUiThread()V

    .line 265
    iget-object v0, p0, Lcom/estimote/sdk/service/BeaconService;->monitoredRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 266
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estimote/sdk/service/MonitoringRegion;

    .line 268
    iget-object v1, v1, Lcom/estimote/sdk/service/MonitoringRegion;->region:Lcom/estimote/sdk/Region;

    invoke-virtual {v1}, Lcom/estimote/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/estimote/sdk/service/BeaconService;->monitoredRegions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/estimote/sdk/service/BeaconService;->rangedRegions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->removeAfterScanCycleCallback()V

    .line 274
    invoke-direct {p0}, Lcom/estimote/sdk/service/BeaconService;->stopScanning()V

    .line 275
    iget-object p1, p0, Lcom/estimote/sdk/service/BeaconService;->beaconsFoundInScanCycle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_2
    return-void
.end method
