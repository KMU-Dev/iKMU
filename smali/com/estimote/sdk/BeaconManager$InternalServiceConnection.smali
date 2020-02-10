.class Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;
.super Ljava/lang/Object;
.source "BeaconManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/estimote/sdk/BeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/estimote/sdk/BeaconManager;


# direct methods
.method private constructor <init>(Lcom/estimote/sdk/BeaconManager;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/BeaconManager$1;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1}, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;-><init>(Lcom/estimote/sdk/BeaconManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 446
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/estimote/sdk/BeaconManager;->access$202(Lcom/estimote/sdk/BeaconManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 447
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {p1}, Lcom/estimote/sdk/BeaconManager;->access$300(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$ErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 448
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {p1}, Lcom/estimote/sdk/BeaconManager;->access$400(Lcom/estimote/sdk/BeaconManager;)V

    .line 450
    :cond_0
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {p1}, Lcom/estimote/sdk/BeaconManager;->access$500(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/service/ScanPeriodData;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 451
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {v0}, Lcom/estimote/sdk/BeaconManager;->access$500(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/service/ScanPeriodData;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {p1, v0, v1}, Lcom/estimote/sdk/BeaconManager;->access$600(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/service/ScanPeriodData;I)V

    .line 452
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {p1, p2}, Lcom/estimote/sdk/BeaconManager;->access$502(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/service/ScanPeriodData;)Lcom/estimote/sdk/service/ScanPeriodData;

    .line 454
    :cond_1
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {p1}, Lcom/estimote/sdk/BeaconManager;->access$700(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/service/ScanPeriodData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 455
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    iget-object v0, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {v0}, Lcom/estimote/sdk/BeaconManager;->access$700(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/service/ScanPeriodData;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p1, v0, v1}, Lcom/estimote/sdk/BeaconManager;->access$600(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/service/ScanPeriodData;I)V

    .line 456
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {p1, p2}, Lcom/estimote/sdk/BeaconManager;->access$702(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/service/ScanPeriodData;)Lcom/estimote/sdk/service/ScanPeriodData;

    .line 458
    :cond_2
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {p1}, Lcom/estimote/sdk/BeaconManager;->access$800(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 459
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {p1}, Lcom/estimote/sdk/BeaconManager;->access$800(Lcom/estimote/sdk/BeaconManager;)Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;->onServiceReady()V

    .line 460
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    invoke-static {p1, p2}, Lcom/estimote/sdk/BeaconManager;->access$802(Lcom/estimote/sdk/BeaconManager;Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;)Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;

    :cond_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service disconnected, crashed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/estimote/sdk/utils/L;->e(Ljava/lang/String;)V

    .line 467
    iget-object p1, p0, Lcom/estimote/sdk/BeaconManager$InternalServiceConnection;->this$0:Lcom/estimote/sdk/BeaconManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/estimote/sdk/BeaconManager;->access$202(Lcom/estimote/sdk/BeaconManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
