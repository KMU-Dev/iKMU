.class Lcom/estimote/sdk/connection/BeaconConnection$1;
.super Ljava/util/HashMap;
.source "BeaconConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/estimote/sdk/connection/BeaconConnection;-><init>(Landroid/content/Context;Lcom/estimote/sdk/Beacon;Lcom/estimote/sdk/connection/BeaconConnection$ConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/util/UUID;",
        "Lcom/estimote/sdk/connection/BluetoothService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/estimote/sdk/connection/BeaconConnection;


# direct methods
.method constructor <init>(Lcom/estimote/sdk/connection/BeaconConnection;)V
    .locals 1

    .line 190
    iput-object p1, p0, Lcom/estimote/sdk/connection/BeaconConnection$1;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 191
    sget-object p1, Lcom/estimote/sdk/connection/EstimoteUuid;->AUTH_SERVICE:Ljava/util/UUID;

    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$1;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {v0}, Lcom/estimote/sdk/connection/BeaconConnection;->access$000(Lcom/estimote/sdk/connection/BeaconConnection;)Lcom/estimote/sdk/connection/AuthService;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/estimote/sdk/connection/BeaconConnection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object p1, Lcom/estimote/sdk/connection/EstimoteUuid;->ESTIMOTE_SERVICE:Ljava/util/UUID;

    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$1;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {v0}, Lcom/estimote/sdk/connection/BeaconConnection;->access$100(Lcom/estimote/sdk/connection/BeaconConnection;)Lcom/estimote/sdk/connection/EstimoteService;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/estimote/sdk/connection/BeaconConnection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object p1, Lcom/estimote/sdk/connection/EstimoteUuid;->VERSION_SERVICE:Ljava/util/UUID;

    iget-object v0, p0, Lcom/estimote/sdk/connection/BeaconConnection$1;->this$0:Lcom/estimote/sdk/connection/BeaconConnection;

    invoke-static {v0}, Lcom/estimote/sdk/connection/BeaconConnection;->access$200(Lcom/estimote/sdk/connection/BeaconConnection;)Lcom/estimote/sdk/connection/VersionService;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/estimote/sdk/connection/BeaconConnection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
