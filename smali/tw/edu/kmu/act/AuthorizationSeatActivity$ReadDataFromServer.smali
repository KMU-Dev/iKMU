.class Ltw/edu/kmu/act/AuthorizationSeatActivity$ReadDataFromServer;
.super Landroid/os/AsyncTask;
.source "AuthorizationSeatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/AuthorizationSeatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadDataFromServer"
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
.field final synthetic this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/AuthorizationSeatActivity;)V
    .locals 0

    .line 190
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$ReadDataFromServer;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/AuthorizationSeatActivity;Ltw/edu/kmu/act/AuthorizationSeatActivity$1;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity$ReadDataFromServer;-><init>(Ltw/edu/kmu/act/AuthorizationSeatActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 190
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity$ReadDataFromServer;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 199
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$ReadDataFromServer;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$ReadDataFromServer;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$900(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$802(Ltw/edu/kmu/act/AuthorizationSeatActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 200
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$ReadDataFromServer;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$1000(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3f7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity$ReadDataFromServer;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 207
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 194
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
