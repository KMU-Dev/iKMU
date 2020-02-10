.class public Ltw/edu/kmu/act/MainPageActivityV2$ConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainPageActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/MainPageActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MainPageActivityV2;


# direct methods
.method public constructor <init>(Ltw/edu/kmu/act/MainPageActivityV2;)V
    .locals 0

    .line 465
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$ConfigReceiver;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 469
    invoke-static {}, Ltw/edu/kmu/act/MainPageActivityV2;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ConfigReceiver start"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object p2, p0, Ltw/edu/kmu/act/MainPageActivityV2$ConfigReceiver;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-static {p1}, Ltw/edu/kmu/vo/ConfigData;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/vo/ConfigData;

    move-result-object p1

    invoke-static {p2, p1}, Ltw/edu/kmu/act/MainPageActivityV2;->access$402(Ltw/edu/kmu/act/MainPageActivityV2;Ltw/edu/kmu/vo/ConfigData;)Ltw/edu/kmu/vo/ConfigData;

    return-void
.end method
