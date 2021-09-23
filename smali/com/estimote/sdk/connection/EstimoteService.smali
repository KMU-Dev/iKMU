.class public Lcom/estimote/sdk/connection/EstimoteService;
.super Ljava/lang/Object;
.source "EstimoteService.java"

# interfaces
.implements Lcom/estimote/sdk/connection/BluetoothService;


# instance fields
.field private final characteristics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private final writeCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estimote/sdk/connection/EstimoteService;->writeCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method private static getUnsignedByte([B)I
    .locals 1

    const/4 v0, 0x0

    .line 78
    aget-byte p0, p0, v0

    invoke-static {p0}, Lcom/estimote/sdk/connection/EstimoteService;->unsignedByteToInt(B)I

    move-result p0

    return p0
.end method

.method private static getUnsignedInt16([B)I
    .locals 2

    const/4 v0, 0x0

    .line 82
    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/estimote/sdk/connection/EstimoteService;->unsignedByteToInt(B)I

    move-result v0

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    invoke-static {p0}, Lcom/estimote/sdk/connection/EstimoteService;->unsignedByteToInt(B)I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    return v0
.end method

.method private static unsignedByteToInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public beforeCharacteristicWrite(Ljava/util/UUID;Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/estimote/sdk/connection/EstimoteService;->writeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p2, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method public getAdvertisingIntervalMillis()Ljava/lang/Integer;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->ADVERTISING_INTERVAL_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->ADVERTISING_INTERVAL_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/connection/EstimoteService;->getUnsignedInt16([B)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f200000    # 0.625f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAvailableCharacteristics()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 73
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getBatteryPercent()Ljava/lang/Integer;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->BATTERY_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->BATTERY_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/connection/EstimoteService;->getUnsignedByte([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPowerDBM()Ljava/lang/Byte;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->POWER_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->POWER_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasCharacteristic(Ljava/util/UUID;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/estimote/sdk/connection/EstimoteService;->writeCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;

    if-nez p2, :cond_0

    .line 93
    invoke-interface {p1}, Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;->onSuccess()V

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {p1}, Lcom/estimote/sdk/connection/BeaconConnection$WriteCallback;->onError()V

    :goto_0
    return-void
.end method

.method public processGattServices(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 32
    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->ESTIMOTE_SERVICE:Ljava/util/UUID;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    sget-object v2, Lcom/estimote/sdk/connection/EstimoteUuid;->UUID_NORMAL_CHAR:Ljava/util/UUID;

    sget-object v3, Lcom/estimote/sdk/connection/EstimoteUuid;->UUID_NORMAL_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    sget-object v2, Lcom/estimote/sdk/connection/EstimoteUuid;->MAJOR_CHAR:Ljava/util/UUID;

    sget-object v3, Lcom/estimote/sdk/connection/EstimoteUuid;->MAJOR_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    sget-object v2, Lcom/estimote/sdk/connection/EstimoteUuid;->MINOR_CHAR:Ljava/util/UUID;

    sget-object v3, Lcom/estimote/sdk/connection/EstimoteUuid;->MINOR_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v1, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    sget-object v2, Lcom/estimote/sdk/connection/EstimoteUuid;->BATTERY_CHAR:Ljava/util/UUID;

    sget-object v3, Lcom/estimote/sdk/connection/EstimoteUuid;->BATTERY_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    sget-object v2, Lcom/estimote/sdk/connection/EstimoteUuid;->POWER_CHAR:Ljava/util/UUID;

    sget-object v3, Lcom/estimote/sdk/connection/EstimoteUuid;->POWER_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    sget-object v2, Lcom/estimote/sdk/connection/EstimoteUuid;->ADVERTISING_INTERVAL_CHAR:Ljava/util/UUID;

    sget-object v3, Lcom/estimote/sdk/connection/EstimoteUuid;->ADVERTISING_INTERVAL_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public update(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/estimote/sdk/connection/EstimoteService;->characteristics:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
