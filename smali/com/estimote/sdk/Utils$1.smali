.class final Lcom/estimote/sdk/Utils$1;
.super Landroid/content/BroadcastReceiver;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/estimote/sdk/Utils;->restartBluetooth(Landroid/content/Context;Lcom/estimote/sdk/Utils$RestartCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$listener:Lcom/estimote/sdk/Utils$RestartCompletedListener;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;Lcom/estimote/sdk/Utils$RestartCompletedListener;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/estimote/sdk/Utils$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Lcom/estimote/sdk/Utils$1;->val$listener:Lcom/estimote/sdk/Utils$RestartCompletedListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    .line 210
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 212
    iget-object p1, p0, Lcom/estimote/sdk/Utils$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    if-ne p2, v0, :cond_1

    .line 214
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    iget-object p1, p0, Lcom/estimote/sdk/Utils$1;->val$listener:Lcom/estimote/sdk/Utils$RestartCompletedListener;

    invoke-interface {p1}, Lcom/estimote/sdk/Utils$RestartCompletedListener;->onRestartCompleted()V

    :cond_1
    :goto_0
    return-void
.end method
