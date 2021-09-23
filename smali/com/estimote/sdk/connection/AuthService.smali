.class public Lcom/estimote/sdk/connection/AuthService;
.super Ljava/lang/Object;
.source "AuthService.java"

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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estimote/sdk/connection/AuthService;->characteristics:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getAuthSeedCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/estimote/sdk/connection/AuthService;->characteristics:Ljava/util/HashMap;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_SEED_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getAuthVectorCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/estimote/sdk/connection/AuthService;->characteristics:Ljava/util/HashMap;

    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_VECTOR_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public isAuthSeedCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    sget-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_SEED_CHAR:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isAuthVectorCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1

    .line 50
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    sget-object v0, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_VECTOR_CHAR:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isAvailable()Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/estimote/sdk/connection/AuthService;->characteristics:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 25
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

    .line 26
    sget-object v1, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_SERVICE:Ljava/util/UUID;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/estimote/sdk/connection/AuthService;->characteristics:Ljava/util/HashMap;

    sget-object v2, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_SEED_CHAR:Ljava/util/UUID;

    sget-object v3, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_SEED_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/estimote/sdk/connection/AuthService;->characteristics:Ljava/util/HashMap;

    sget-object v2, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_VECTOR_CHAR:Ljava/util/UUID;

    sget-object v3, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_VECTOR_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public update(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/estimote/sdk/connection/AuthService;->characteristics:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
