.class Ltw/edu/kmu/act/NewsActivity$updateNewsFromServer;
.super Landroid/os/AsyncTask;
.source "NewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/NewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "updateNewsFromServer"
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
.field final synthetic this$0:Ltw/edu/kmu/act/NewsActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/NewsActivity;)V
    .locals 0

    .line 442
    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity$updateNewsFromServer;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/NewsActivity;Ltw/edu/kmu/act/NewsActivity$1;)V
    .locals 0

    .line 442
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/NewsActivity$updateNewsFromServer;-><init>(Ltw/edu/kmu/act/NewsActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 442
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/NewsActivity$updateNewsFromServer;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 450
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$updateNewsFromServer;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$1600(Ltw/edu/kmu/act/NewsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity$updateNewsFromServer;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/NewsActivity;->access$1500(Ltw/edu/kmu/act/NewsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 451
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$updateNewsFromServer;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$1700(Ltw/edu/kmu/act/NewsActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3ec

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 442
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/NewsActivity$updateNewsFromServer;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 458
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 445
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
