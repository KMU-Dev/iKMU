.class Lcom/estimote/sdk/connection/BeaconConnection$3;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BeaconConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/estimote/sdk/connection/BeaconConnection;->createBluetoothGattCallback()Landroid/bluetooth/BluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/estimote/sdk/connection/BeaconConnection;


# direct methods
.method constructor <init>(Lcom/estimote/sdk/connection/BeaconConnection;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {v0}, Lcom/estimote/sdk/connection/BeaconConnection;->access$000(Lcom/estimote/sdk/connection/BeaconConnection;)Lcom/estimote/sdk/connection/AuthService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estimote/sdk/connection/AuthService;->isAuthSeedCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    .line 368
    iget-object p3, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p3, p1, p2}, Lcom/estimote/sdk/connection/BeaconConnection;->access$700(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    :cond_0
    const-string p1, "Auth failed: could not read beacon\'s response to seed"

    .line 370
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$500(Lcom/estimote/sdk/connection/BeaconConnection;)V

    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 376
    iget-object p3, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p3}, Lcom/estimote/sdk/connection/BeaconConnection;->access$800(Lcom/estimote/sdk/connection/BeaconConnection;)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/estimote/sdk/connection/BluetoothService;

    invoke-interface {p3, p2}, Lcom/estimote/sdk/connection/BluetoothService;->update(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 377
    iget-object p2, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p2, p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$900(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_1

    :cond_2
    const-string p1, "Failed to read characteristic"

    .line 379
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$1000(Lcom/estimote/sdk/connection/BeaconConnection;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 381
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$500(Lcom/estimote/sdk/connection/BeaconConnection;)V

    :goto_1
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {v0}, Lcom/estimote/sdk/connection/BeaconConnection;->access$000(Lcom/estimote/sdk/connection/BeaconConnection;)Lcom/estimote/sdk/connection/AuthService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estimote/sdk/connection/AuthService;->isAuthSeedCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    .line 389
    iget-object p3, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p3, p1, p2}, Lcom/estimote/sdk/connection/BeaconConnection;->access$1100(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    :cond_0
    const-string p1, "Authentication failed: seed not negotiated"

    .line 391
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$500(Lcom/estimote/sdk/connection/BeaconConnection;)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {v0}, Lcom/estimote/sdk/connection/BeaconConnection;->access$000(Lcom/estimote/sdk/connection/BeaconConnection;)Lcom/estimote/sdk/connection/AuthService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estimote/sdk/connection/AuthService;->isAuthVectorCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    .line 396
    iget-object p2, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p2, p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$1200(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0

    :cond_2
    const-string p1, "Authentication failed: auth source write failed"

    .line 398
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 399
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$500(Lcom/estimote/sdk/connection/BeaconConnection;)V

    goto :goto_0

    .line 401
    :cond_3
    sget-object p1, Lcom/estimote/sdk/connection/EstimoteUuid;->ESTIMOTE_SERVICE:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 402
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$100(Lcom/estimote/sdk/connection/BeaconConnection;)Lcom/estimote/sdk/connection/EstimoteService;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/estimote/sdk/connection/EstimoteService;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Connected to GATT server, discovering services: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 355
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$300(Lcom/estimote/sdk/connection/BeaconConnection;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Disconnected from GATT server"

    .line 356
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$500(Lcom/estimote/sdk/connection/BeaconConnection;)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const-string p1, "Disconnected from GATT server"

    .line 359
    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$600(Lcom/estimote/sdk/connection/BeaconConnection;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "Services discovered"

    .line 409
    invoke-static {p2}, Lcom/estimote/sdk/utils/L;->v(Ljava/lang/String;)V

    .line 410
    iget-object p2, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/estimote/sdk/connection/BeaconConnection;->access$1300(Lcom/estimote/sdk/connection/BeaconConnection;Ljava/util/List;)V

    .line 411
    iget-object p2, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p2, p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$1400(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0

    .line 413
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not discover services, status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->w(Ljava/lang/String;)V

    .line 414
    iget-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$3;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {p1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$500(Lcom/estimote/sdk/connection/BeaconConnection;)V

    :goto_0
    return-void
.end method
