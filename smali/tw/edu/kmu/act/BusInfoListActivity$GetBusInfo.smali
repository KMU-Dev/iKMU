.class Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;
.super Landroid/os/AsyncTask;
.source "BusInfoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/BusInfoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetBusInfo"
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
.field final synthetic this$0:Ltw/edu/kmu/act/BusInfoListActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/BusInfoListActivity;)V
    .locals 0

    .line 185
    iput-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/BusInfoListActivity;Ltw/edu/kmu/act/BusInfoListActivity$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;-><init>(Ltw/edu/kmu/act/BusInfoListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 185
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 195
    iget-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/BusInfoListActivity;->access$800(Ltw/edu/kmu/act/BusInfoListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/BusInfoListActivity;->access$702(Ltw/edu/kmu/act/BusInfoListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 196
    iget-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/BusInfoListActivity;->access$700(Ltw/edu/kmu/act/BusInfoListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/BusInfoListActivity;->access$700(Ltw/edu/kmu/act/BusInfoListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 197
    iget-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/BusInfoListActivity;->access$500(Ltw/edu/kmu/act/BusInfoListActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;->this$0:Ltw/edu/kmu/act/BusInfoListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/BusInfoListActivity;->access$500(Ltw/edu/kmu/act/BusInfoListActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3f5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 185
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/BusInfoListActivity$GetBusInfo;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 189
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
