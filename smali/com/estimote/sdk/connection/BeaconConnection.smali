.class public Lcom/estimote/sdk/connection/BeaconConnection;
.super Ljava/lang/Object;
.source "BeaconConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;,
        Lcom/estimote/sdk/connection/BeaconConnection$ConnectionCallback;,
        Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;
    }
.end annotation


# static fields
.field public static ALLOWED_POWER_LEVELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aAuth:J

.field private final authService:Lcom/estimote/sdk/connection/AuthService;

.field private bAuth:J

.field private bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private final connectionCallback:Lcom/estimote/sdk/connection/BeaconConnection$ConnectionCallback;

.field private final context:Landroid/content/Context;

.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private didReadCharacteristics:Z

.field private final estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

.field private final handler:Landroid/os/Handler;

.field private final timeoutHandler:Ljava/lang/Runnable;

.field private toFetch:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private final uuidToService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/estimote/sdk/connection/BluetoothService;",
            ">;"
        }
    .end annotation
.end field

.field private final versionService:Lcom/estimote/sdk/connection/VersionService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 83
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, -0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, -0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, -0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/16 v2, -0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/4 v2, -0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/estimote/sdk/connection/BeaconConnection;->ALLOWED_POWER_LEVELS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/estimote/sdk/Beacon;Lcom/estimote/sdk/connection/BeaconConnection$ConnectionCallback;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->context:Landroid/content/Context;

    .line 181
    invoke-direct {p0, p2}, Lcom/estimote/sdk/connection/BeaconConnection;->deviceFromBeacon(Lcom/estimote/sdk/Beacon;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->device:Landroid/bluetooth/BluetoothDevice;

    .line 182
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->toFetch:Ljava/util/LinkedList;

    .line 183
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->handler:Landroid/os/Handler;

    .line 184
    iput-object p3, p0, Lcom/estimote/sdk/connection/BeaconConnection;->connectionCallback:Lcom/estimote/sdk/connection/BeaconConnection$ConnectionCallback;

    .line 185
    invoke-direct {p0}, Lcom/estimote/sdk/connection/BeaconConnection;->createBluetoothGattCallback()Landroid/bluetooth/BluetoothGattCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 186
    invoke-direct {p0}, Lcom/estimote/sdk/connection/BeaconConnection;->createTimeoutHandler()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->timeoutHandler:Ljava/lang/Runnable;

    .line 187
    new-instance p1, Lcom/estimote/sdk/connection/AuthService;

    invoke-direct {p1}, Lcom/estimote/sdk/connection/AuthService;-><init>()V

    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->authService:Lcom/estimote/sdk/connection/AuthService;

    .line 188
    new-instance p1, Lcom/estimote/sdk/connection/EstimoteService;

    invoke-direct {p1}, Lcom/estimote/sdk/connection/EstimoteService;-><init>()V

    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    .line 189
    new-instance p1, Lcom/estimote/sdk/connection/VersionService;

    invoke-direct {p1}, Lcom/estimote/sdk/connection/VersionService;-><init>()V

    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->versionService:Lcom/estimote/sdk/connection/VersionService;

    .line 190
    new-instance p1, Lcom/estimote/sdk/connection/BeaconConnection$1;

    invoke-direct {p1, p0}, Lcom/estimote/sdk/connection/BeaconConnection$1;-><init>(Lcom/estimote/sdk/connection/BeaconConnection;)V

    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->uuidToService:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/estimote/sdk/connection/BeaconConnection;)Lcom/estimote/sdk/connection/AuthService;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->authService:Lcom/estimote/sdk/connection/AuthService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/estimote/sdk/connection/BeaconConnection;)Lcom/estimote/sdk/connection/EstimoteService;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/estimote/sdk/connection/BeaconConnection;)Ljava/util/LinkedList;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->toFetch:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/estimote/sdk/connection/BeaconConnection;->onSeedWriteCompleted(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/estimote/sdk/connection/BeaconConnection;->onAuthenticationCompleted(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/estimote/sdk/connection/BeaconConnection;Ljava/util/List;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/estimote/sdk/connection/BeaconConnection;->processDiscoveredServices(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/estimote/sdk/connection/BeaconConnection;->startAuthentication(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$200(Lcom/estimote/sdk/connection/BeaconConnection;)Lcom/estimote/sdk/connection/VersionService;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->versionService:Lcom/estimote/sdk/connection/VersionService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/estimote/sdk/connection/BeaconConnection;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->didReadCharacteristics:Z

    return p0
.end method

.method static synthetic access$400(Lcom/estimote/sdk/connection/BeaconConnection;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$402(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$500(Lcom/estimote/sdk/connection/BeaconConnection;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/estimote/sdk/connection/BeaconConnection;->notifyAuthenticationError()V

    return-void
.end method

.method static synthetic access$600(Lcom/estimote/sdk/connection/BeaconConnection;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/estimote/sdk/connection/BeaconConnection;->notifyDisconnected()V

    return-void
.end method

.method static synthetic access$700(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/estimote/sdk/connection/BeaconConnection;->onBeaconSeedResponse(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$800(Lcom/estimote/sdk/connection/BeaconConnection;)Ljava/util/Map;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->uuidToService:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/estimote/sdk/connection/BeaconConnection;->readCharacteristics(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method private createBluetoothGattCallback()Landroid/bluetooth/BluetoothGattCallback;
    .locals 1

    .line 350
    new-instance v0, Lcom/estimote/sdk/connection/BeaconConnection$3;

    invoke-direct {v0, p0}, Lcom/estimote/sdk/connection/BeaconConnection$3;-><init>(Lcom/estimote/sdk/connection/BeaconConnection;)V

    return-object v0
.end method

.method private createTimeoutHandler()Ljava/lang/Runnable;
    .locals 1

    .line 333
    new-instance v0, Lcom/estimote/sdk/connection/BeaconConnection$2;

    invoke-direct {v0, p0}, Lcom/estimote/sdk/connection/BeaconConnection$2;-><init>(Lcom/estimote/sdk/connection/BeaconConnection;)V

    return-object v0
.end method

.method private deviceFromBeacon(Lcom/estimote/sdk/Beacon;)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->context:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 199
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lcom/estimote/sdk/Beacon;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method private notifyAuthenticationError()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->timeoutHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 422
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->connectionCallback:Lcom/estimote/sdk/connection/BeaconConnection$ConnectionCallback;

    invoke-interface {v0}, Lcom/estimote/sdk/connection/BeaconConnection$ConnectionCallback;->onAuthenticationError()V

    return-void
.end method

.method private notifyDisconnected()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->connectionCallback:Lcom/estimote/sdk/connection/BeaconConnection$ConnectionCallback;

    invoke-interface {v0}, Lcom/estimote/sdk/connection/BeaconConnection$ConnectionCallback;->onDisconnected()V

    return-void
.end method

.method private onAuthenticated()V
    .locals 4

    const-string v0, "Authenticated to beacon"

    .line 493
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->v(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->timeoutHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 495
    iput-boolean v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->didReadCharacteristics:Z

    .line 496
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->connectionCallback:Lcom/estimote/sdk/connection/BeaconConnection$ConnectionCallback;

    new-instance v1, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;

    iget-object v2, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    iget-object v3, p0, Lcom/estimote/sdk/connection/BeaconConnection;->versionService:Lcom/estimote/sdk/connection/VersionService;

    invoke-direct {v1, v2, v3}, Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;-><init>(Lcom/estimote/sdk/connection/EstimoteService;Lcom/estimote/sdk/connection/VersionService;)V

    invoke-interface {v0, v1}, Lcom/estimote/sdk/connection/BeaconConnection$ConnectionCallback;->onAuthenticated(Lcom/estimote/sdk/connection/BeaconConnection$BeaconCharacteristics;)V

    return-void
.end method

.method private onAuthenticationCompleted(Landroid/bluetooth/BluetoothGatt;)V
    .locals 4

    .line 474
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/estimote/sdk/connection/BeaconConnection$5;

    invoke-direct {v1, p0, p1}, Lcom/estimote/sdk/connection/BeaconConnection$5;-><init>(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onBeaconSeedResponse(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 464
    invoke-virtual {p2, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p2

    .line 465
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/estimote/sdk/internal/UnsignedInteger;->fromIntBits(I)Lcom/estimote/sdk/internal/UnsignedInteger;

    move-result-object p2

    invoke-virtual {p2}, Lcom/estimote/sdk/internal/UnsignedInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bAuth:J

    .line 466
    iget-object p2, p0, Lcom/estimote/sdk/connection/BeaconConnection;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 467
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->authService:Lcom/estimote/sdk/connection/AuthService;

    invoke-virtual {v0}, Lcom/estimote/sdk/connection/AuthService;->getAuthVectorCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 468
    iget-wide v1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->aAuth:J

    iget-wide v3, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bAuth:J

    invoke-static {v1, v2, v3, v4, p2}, Lcom/estimote/sdk/utils/AuthMath;->secondStepSecret(JJLjava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 469
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method

.method private onSeedWriteCompleted(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/estimote/sdk/connection/BeaconConnection$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/estimote/sdk/connection/BeaconConnection$4;-><init>(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private processDiscoveredServices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->authService:Lcom/estimote/sdk/connection/AuthService;

    invoke-virtual {v0, p1}, Lcom/estimote/sdk/connection/AuthService;->processGattServices(Ljava/util/List;)V

    .line 431
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    invoke-virtual {v0, p1}, Lcom/estimote/sdk/connection/EstimoteService;->processGattServices(Ljava/util/List;)V

    .line 432
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->versionService:Lcom/estimote/sdk/connection/VersionService;

    invoke-virtual {v0, p1}, Lcom/estimote/sdk/connection/VersionService;->processGattServices(Ljava/util/List;)V

    .line 434
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->toFetch:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 435
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->toFetch:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    invoke-virtual {v0}, Lcom/estimote/sdk/connection/EstimoteService;->getAvailableCharacteristics()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 436
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->toFetch:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->versionService:Lcom/estimote/sdk/connection/VersionService;

    invoke-virtual {v0}, Lcom/estimote/sdk/connection/VersionService;->getAvailableCharacteristics()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private readCharacteristics(Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->toFetch:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->toFetch:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0

    .line 486
    :cond_0
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_1

    .line 487
    invoke-direct {p0}, Lcom/estimote/sdk/connection/BeaconConnection;->onAuthenticated()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startAuthentication(Landroid/bluetooth/BluetoothGatt;)V
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->authService:Lcom/estimote/sdk/connection/AuthService;

    invoke-virtual {v0}, Lcom/estimote/sdk/connection/AuthService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Authentication service is not available on the beacon"

    .line 442
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 443
    invoke-direct {p0}, Lcom/estimote/sdk/connection/BeaconConnection;->notifyAuthenticationError()V

    return-void

    .line 446
    :cond_0
    invoke-static {}, Lcom/estimote/sdk/utils/AuthMath;->randomUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->aAuth:J

    .line 447
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->authService:Lcom/estimote/sdk/connection/AuthService;

    invoke-virtual {v0}, Lcom/estimote/sdk/connection/AuthService;->getAuthSeedCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 448
    iget-wide v1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->aAuth:J

    invoke-static {v1, v2}, Lcom/estimote/sdk/utils/AuthMath;->firstStepSecret(J)I

    move-result v1

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 449
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 5

    const-string v0, "Trying to connect to GATT"

    .line 205
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->didReadCharacteristics:Z

    .line 207
    iget-object v1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/estimote/sdk/connection/BeaconConnection;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v1, v2, v0, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 208
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->timeoutHandler:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public close()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 215
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->timeoutHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isConnected()Z
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->context:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 223
    iget-object v1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->device:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 224
    iget-boolean v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->didReadCharacteristics:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeAdvertisingInterval(ILcom/estimote/sdk/connection/BeaconConnection$WriteCallback;)V
    .locals 5

    .line 254
    invoke-virtual {p0}, Lcom/estimote/sdk/connection/BeaconConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->ADVERTISING_INTERVAL_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/estimote/sdk/connection/EstimoteService;->hasCharacteristic(Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    .line 259
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double v1, p1

    const-wide/high16 v3, 0x3fe4000000000000L    # 0.625

    .line 260
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-int p1, v1

    .line 261
    iget-object v1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    sget-object v2, Lcom/estimote/sdk/connection/EstimoteUuid;->ADVERTISING_INTERVAL_CHAR:Ljava/util/UUID;

    invoke-virtual {v1, v2, p2}, Lcom/estimote/sdk/connection/EstimoteService;->beforeCharacteristicWrite(Ljava/util/UUID;Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    const/16 v1, 0x12

    .line 263
    invoke-virtual {p2, p1, v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 264
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "Not connected to beacon. Discarding changing advertising interval."

    .line 255
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 256
    invoke-interface {p2}, Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;->onError()V

    return-void
.end method

.method public writeBroadcastingPower(ILcom/estimote/sdk/connection/BeaconConnection$WriteCallback;)V
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/estimote/sdk/connection/BeaconConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->POWER_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/estimote/sdk/connection/EstimoteService;->hasCharacteristic(Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    sget-object v0, Lcom/estimote/sdk/connection/BeaconConnection;->ALLOWED_POWER_LEVELS:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Not allowed power level. Discarding changing broadcasting power."

    .line 282
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 283
    invoke-interface {p2}, Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;->onError()V

    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->POWER_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1, p2}, Lcom/estimote/sdk/connection/EstimoteService;->beforeCharacteristicWrite(Ljava/util/UUID;Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 288
    invoke-virtual {p2, p1, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 289
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void

    :cond_2
    :goto_0
    const-string p1, "Not connected to beacon. Discarding changing broadcasting power."

    .line 277
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 278
    invoke-interface {p2}, Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;->onError()V

    return-void
.end method

.method public writeMajor(ILcom/estimote/sdk/connection/BeaconConnection$WriteCallback;)V
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/estimote/sdk/connection/BeaconConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Not connected to beacon. Discarding changing major."

    .line 301
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 302
    invoke-interface {p2}, Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;->onError()V

    return-void

    .line 305
    :cond_0
    invoke-static {p1}, Lcom/estimote/sdk/Utils;->normalize16BitUnsignedInt(I)I

    move-result p1

    .line 306
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->MAJOR_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1, p2}, Lcom/estimote/sdk/connection/EstimoteService;->beforeCharacteristicWrite(Ljava/util/UUID;Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    const/16 v0, 0x12

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p2, p1, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 309
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method

.method public writeMinor(ILcom/estimote/sdk/connection/BeaconConnection$WriteCallback;)V
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcom/estimote/sdk/connection/BeaconConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Not connected to beacon. Discarding changing minor."

    .line 321
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 322
    invoke-interface {p2}, Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;->onError()V

    return-void

    .line 325
    :cond_0
    invoke-static {p1}, Lcom/estimote/sdk/Utils;->normalize16BitUnsignedInt(I)I

    move-result p1

    .line 326
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->MINOR_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1, p2}, Lcom/estimote/sdk/connection/EstimoteService;->beforeCharacteristicWrite(Ljava/util/UUID;Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    const/16 v0, 0x12

    const/4 v1, 0x0

    .line 328
    invoke-virtual {p2, p1, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 329
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method

.method public writeProximityUuid(Ljava/lang/String;Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;)V
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/estimote/sdk/connection/BeaconConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->UUID_NORMAL_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/estimote/sdk/connection/EstimoteService;->hasCharacteristic(Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "-"

    const-string v1, ""

    .line 239
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/estimote/sdk/internal/HashCode;->fromString(Ljava/lang/String;)Lcom/estimote/sdk/internal/HashCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/estimote/sdk/internal/HashCode;->asBytes()[B

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection;->estimoteService:Lcom/estimote/sdk/connection/EstimoteService;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->UUID_NORMAL_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1, p2}, Lcom/estimote/sdk/connection/EstimoteService;->beforeCharacteristicWrite(Ljava/util/UUID;Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    .line 242
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 243
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "Not connected to beacon. Discarding changing proximity UUID."

    .line 235
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 236
    invoke-interface {p2}, Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;->onError()V

    return-void
.end method
