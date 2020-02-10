.class Ltw/edu/kmu/act/MainPageActivityV2$RenewBeaconData;
.super Landroid/os/AsyncTask;
.source "MainPageActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/MainPageActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenewBeaconData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MainPageActivityV2;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/MainPageActivityV2;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$RenewBeaconData;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/MainPageActivityV2;Ltw/edu/kmu/act/MainPageActivityV2$1;)V
    .locals 0

    .line 1035
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2$RenewBeaconData;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1035
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2$RenewBeaconData;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 1045
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$RenewBeaconData;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    const-string v0, "URL_BEACON_INFO"

    invoke-static {p1, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->access$700(Ltw/edu/kmu/act/MainPageActivityV2;Ljava/lang/String;)V

    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1035
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2$RenewBeaconData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 1051
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1052
    invoke-static {}, Ltw/edu/kmu/vo/ConfigData;->deleteInstance()V

    .line 1053
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$RenewBeaconData;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-static {p1}, Ltw/edu/kmu/vo/ConfigData;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/vo/ConfigData;

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1039
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
