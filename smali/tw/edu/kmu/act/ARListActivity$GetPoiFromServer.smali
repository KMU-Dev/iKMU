.class Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;
.super Landroid/os/AsyncTask;
.source "ARListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/ARListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPoiFromServer"
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
.field final synthetic this$0:Ltw/edu/kmu/act/ARListActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/ARListActivity;)V
    .locals 0

    .line 594
    iput-object p1, p0, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/ARListActivity;Ltw/edu/kmu/act/ARListActivity$1;)V
    .locals 0

    .line 594
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;-><init>(Ltw/edu/kmu/act/ARListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 594
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 603
    iget-object p1, p0, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;->this$0:Ltw/edu/kmu/act/ARListActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ARListActivity;->access$1100(Ltw/edu/kmu/act/ARListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/ARListActivity;->access$602(Ltw/edu/kmu/act/ARListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 604
    iget-object p1, p0, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/ARListActivity;->access$600(Ltw/edu/kmu/act/ARListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/ARListActivity;->access$600(Ltw/edu/kmu/act/ARListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 605
    iget-object p1, p0, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/ARListActivity;->access$1200(Ltw/edu/kmu/act/ARListActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 607
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;->this$0:Ltw/edu/kmu/act/ARListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/ARListActivity;->access$1200(Ltw/edu/kmu/act/ARListActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3f5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 594
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 615
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 598
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
