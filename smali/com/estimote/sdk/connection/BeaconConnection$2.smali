.class Lcom/estimote/sdk/connection/BeaconConnection$2;
.super Ljava/lang/Object;
.source "BeaconConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/estimote/sdk/connection/BeaconConnection;->createTimeoutHandler()Ljava/lang/Runnable;
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

    .line 333
    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$2;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Timeout while authenticating"

    .line 336
    invoke-static {v0}, Lcom/estimote/sdk/utils/L;->v(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$2;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {v0}, Lcom/estimote/sdk/connection/BeaconConnection;->access$300(Lcom/estimote/sdk/connection/BeaconConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$2;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {v0}, Lcom/estimote/sdk/connection/BeaconConnection;->access$400(Lcom/estimote/sdk/connection/BeaconConnection;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$2;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {v0}, Lcom/estimote/sdk/connection/BeaconConnection;->access$400(Lcom/estimote/sdk/connection/BeaconConnection;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 340
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$2;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {v0}, Lcom/estimote/sdk/connection/BeaconConnection;->access$400(Lcom/estimote/sdk/connection/BeaconConnection;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 341
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$2;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$402(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$2;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {v0}, Lcom/estimote/sdk/connection/BeaconConnection;->access$500(Lcom/estimote/sdk/connection/BeaconConnection;)V

    :cond_1
    return-void
.end method
