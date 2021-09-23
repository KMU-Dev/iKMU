.class Ltw/edu/kmu/act/PoiContentActivity$GetServerData;
.super Landroid/os/AsyncTask;
.source "PoiContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/PoiContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetServerData"
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
.field final synthetic this$0:Ltw/edu/kmu/act/PoiContentActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/PoiContentActivity;)V
    .locals 0

    .line 340
    iput-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity$GetServerData;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/PoiContentActivity;Ltw/edu/kmu/act/PoiContentActivity$1;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/PoiContentActivity$GetServerData;-><init>(Ltw/edu/kmu/act/PoiContentActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 340
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/PoiContentActivity$GetServerData;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .line 350
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity$GetServerData;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/PoiContentActivity;->access$500(Ltw/edu/kmu/act/PoiContentActivity;)V

    .line 351
    iget-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity$GetServerData;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/PoiContentActivity;->access$600(Ltw/edu/kmu/act/PoiContentActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 353
    invoke-static {}, Ltw/edu/kmu/act/PoiContentActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity$GetServerData;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/PoiContentActivity;->access$600(Ltw/edu/kmu/act/PoiContentActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 340
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/PoiContentActivity$GetServerData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 362
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 344
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
