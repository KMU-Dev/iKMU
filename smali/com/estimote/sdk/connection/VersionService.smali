.class public Lcom/estimote/sdk/connection/VersionService;
.super Ljava/lang/Object;
.source "VersionService.java"

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estimote/sdk/connection/VersionService;->characteristics:Ljava/util/HashMap;

    return-void
.end method

.method private static getStringValue([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    :goto_0
    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    new-array v2, v1, [B

    :goto_1
    if-eq v0, v1, :cond_1

    .line 69
    aget-byte v3, p0, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method


# virtual methods
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

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estimote/sdk/connection/VersionService;->characteristics:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 57
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/estimote/sdk/connection/VersionService;->characteristics:Ljava/util/HashMap;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->HARDWARE_VERSION_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estimote/sdk/connection/VersionService;->characteristics:Ljava/util/HashMap;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->HARDWARE_VERSION_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/connection/VersionService;->getStringValue([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/estimote/sdk/connection/VersionService;->characteristics:Ljava/util/HashMap;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->SOFTWARE_VERSION_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estimote/sdk/connection/VersionService;->characteristics:Ljava/util/HashMap;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->SOFTWARE_VERSION_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/estimote/sdk/connection/VersionService;->getStringValue([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
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

    .line 28
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

    .line 29
    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->VERSION_SERVICE:Ljava/util/UUID;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/estimote/sdk/connection/VersionService;->characteristics:Ljava/util/HashMap;

    sget-object v2, Lcom/estimote/sdk/connection/EstimoteUuid;->HARDWARE_VERSION_CHAR:Ljava/util/UUID;

    sget-object v3, Lcom/estimote/sdk/connection/EstimoteUuid;->HARDWARE_VERSION_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/estimote/sdk/connection/VersionService;->characteristics:Ljava/util/HashMap;

    sget-object v2, Lcom/estimote/sdk/connection/EstimoteUuid;->SOFTWARE_VERSION_CHAR:Ljava/util/UUID;

    sget-object v3, Lcom/estimote/sdk/connection/EstimoteUuid;->SOFTWARE_VERSION_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public update(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/estimote/sdk/connection/VersionService;->characteristics:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
