.class Lcom/estimote/sdk/connection/BeaconConnection$5;
.super Ljava/lang/Object;
.source "BeaconConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/estimote/sdk/connection/BeaconConnection;->onAuthenticationCompleted(Landroid/bluetooth/BluetoothGatt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/estimote/sdk/connection/BeaconConnection;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$5;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    iput-object p2, p0, Lcom/estimote/sdk/connection/BeaconConnection$5;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$5;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    iget-object v1, p0, Lcom/estimote/sdk/connection/BeaconConnection$5;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v1}, Lcom/estimote/sdk/connection/BeaconConnection;->access$900(Lcom/estimote/sdk/connection/BeaconConnection;Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
